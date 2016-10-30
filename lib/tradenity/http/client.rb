require 'unirest'
require 'tradenity/error/exceptions'
require 'tradenity/error/message'

module Tradenity

  AUTH_TOKEN_HEADER_NAME = 'X-Tradenity-Session-ID'
  AUTH_TOKEN_HEADER_SYMBOL = :x_tradenity_session_id

  class HttpClient
    @@instance = nil

    def initialize()
      @key = Tradenity.api_key
      @current_session = nil
    end


    def self.get_instance
      unless @@instance
        @@instance = HttpClient.new
      end
      @@instance
    end

    def current_session(session)
      @current_session = session
    end

    def reset_current_session
      @current_session[:auth_token] = nil
    end

    def auth_token
      if @current_session.has_key? :auth_token
        @current_session[:auth_token]
      else
        nil
      end
    end

    def http_op(op, url, data)
      headers = {}
      auth = nil
      if auth_token == nil
        auth =  {:user=> @key, :password=> ''}
      else
        headers[AUTH_TOKEN_HEADER_NAME] = auth_token
      end
      begin
        case op
          when 'GET'
            response = Unirest.get(url, headers: headers, auth: auth, parameters: data)
          when 'POST'
            response = Unirest.post(url, headers: headers, auth: auth, parameters: data)
          when 'PUT'
            response = Unirest.put(url, headers: headers, auth: auth, parameters: data)
          when 'DELETE'
            response = Unirest.delete(url, headers: headers, auth: auth, parameters: data)
          else
            raise 'You must provide a valid Http method.'
        end
      rescue
        raise ClientErrorException.new
      end

      if response.headers.has_key? AUTH_TOKEN_HEADER_SYMBOL

        @current_session[:auth_token] = response.headers[AUTH_TOKEN_HEADER_SYMBOL]
      end

      if response.code >= 400
        translate_exception(response)
      end

      response.body
    end


    def get(url, data=nil)
      http_op('GET', url, data)
    end

    def post(url, data=nil)
      http_op('POST', url, data)
    end

    def put(url, data=nil)
      http_op('PUT', url, data)
    end

    def delete( url)
      http_op('DELETE', url, {})
    end

    def translate_exception(response)
      error = ErrorMessage.new(response.body)
      case response.code
        when 500
          raise ServerErrorException.new('API server error.')
        when 401
          if auth_token == nil
            raise AuthenticationException.new(error)
          else
            raise SessionExpiredException.new(error)
          end
        when 403
          raise AuthorizationException.new(error)
        when 404
          raise EntityNotFoundException.new(error)
        when 400
          case error.errorCode
            when DATA_VALIDATION_ERROR_CODE
              raise DataValidationException.new(error)
            when INVALID_PAYMENT_ERROR_CODE, GATEWAY_ERROR_ERROR_CODE, REFUND_ERROR_ERROR_CODE
              raise PaymentErrorException.new(error)
            when EXISTING_USERNAME_ERROR_CODE, EXISTING_EMAIL_ERROR_CODE
              raise CustomerCreationException.new(error)
            when CART_INVALID_ITEM_ERROR_CODE
              raise ShoppingCartException.new(error)
            when INVENTORY_INVALID_PRODUCT_ERROR_CODE, INVENTORY_NOT_AVAILABLE_PRODUCT_ERROR_CODE
              raise InventoryErrorException.new(error)
            else
              raise RequestErrorException.new(error)
          end
      end
    end

  end
end