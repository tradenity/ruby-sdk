=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class ShoppingCart

  
    def id=(id)
      @id = id
    end

    def id
      if instance_variable_defined?('@id') && @id != nil
        @id
      elsif __meta && __meta.href != nil
        @id = __meta.href.split('/')[-1]
        @id
      else
        nil
      end
    end

    attr_accessor :__meta

    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :items

    attr_accessor :subtotal

    attr_accessor :total

    attr_accessor :shipping_cost

    attr_accessor :items_tax_amount

    attr_accessor :total_items_discount

    attr_accessor :promotions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { 
        :'id' => :'id',
        :'__meta' => :'__meta',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'items' => :'items',
        :'subtotal' => :'subtotal',
        :'total' => :'total',
        :'shipping_cost' => :'shippingCost',
        :'items_tax_amount' => :'itemsTaxAmount',
        :'total_items_discount' => :'totalItemsDiscount',
        :'promotions' => :'promotions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'items' => :'Array<LineItem>',
        :'subtotal' => :'Integer',
        :'total' => :'Integer',
        :'shipping_cost' => :'Integer',
        :'items_tax_amount' => :'Integer',
        :'total_items_discount' => :'Integer',
        :'promotions' => :'Array<Promotion>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }
      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'__meta')
        self.__meta = attributes[:'__meta']
      end

      if attributes.has_key?(:'createdAt')
        self.created_at = attributes[:'createdAt']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'updatedAt')
        self.updated_at = attributes[:'updatedAt']
      end

      if attributes.has_key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.has_key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.has_key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'shippingCost')
        self.shipping_cost = attributes[:'shippingCost']
      end

      if attributes.has_key?(:'shipping_cost')
        self.shipping_cost = attributes[:'shipping_cost']
      end

      if attributes.has_key?(:'itemsTaxAmount')
        self.items_tax_amount = attributes[:'itemsTaxAmount']
      end

      if attributes.has_key?(:'items_tax_amount')
        self.items_tax_amount = attributes[:'items_tax_amount']
      end

      if attributes.has_key?(:'totalItemsDiscount')
        self.total_items_discount = attributes[:'totalItemsDiscount']
      end

      if attributes.has_key?(:'total_items_discount')
        self.total_items_discount = attributes[:'total_items_discount']
      end

      if attributes.has_key?(:'promotions')
        if (value = attributes[:'promotions']).is_a?(Array)
          self.promotions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @subtotal.nil?
        invalid_properties.push('invalid value for "subtotal", subtotal cannot be nil.')
      end

      if @total.nil?
        invalid_properties.push('invalid value for "total", total cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @subtotal.nil?
      return false if @total.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          __meta == o.__meta &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          items == o.items &&
          subtotal == o.subtotal &&
          total == o.total &&
          shipping_cost == o.shipping_cost &&
          items_tax_amount == o.items_tax_amount &&
          total_items_discount == o.total_items_discount &&
          promotions == o.promotions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, items, subtotal, total, shipping_cost, items_tax_amount, total_items_discount, promotions].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Tradenity.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end


    def self.api_client
      ApiClient.default
    end


    class << self


      # Add item.
      # Add new item to the shopping cart.
      # @param item Line item to add to cart
      # @param [Hash] opts the optional parameters
      # @return [ShoppingCart]
      def add_item(item, opts = {})
        data, _status_code, _headers = add_item_with_http_info(item, opts)
        data
      end

      # Add item.
      # Add new item to the shopping cart.
      # @param item Line item to add to cart
      # @param [Hash] opts the optional parameters
      # @return [Array<(ShoppingCart, Fixnum, Hash)>] ShoppingCart data, response status code and response headers
      def add_item_with_http_info(item, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.add_item ...'
        end
        # verify the required parameter 'item' is set
        if api_client.config.client_side_validation && item.nil?
          fail ArgumentError, "Missing the required parameter 'item' when calling ShoppingCart.add_item"
        end
        # resource path
        local_var_path = '/shoppingCarts'

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = api_client.object_to_http_body(item)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'ShoppingCart')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#add_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Checkout cart.
      # Checkout cart, Making an order.
      # @param order Required order details.
      # @param [Hash] opts the optional parameters
      # @return [Order]
      def checkout(order, opts = {})
        data, _status_code, _headers = checkout_with_http_info(order, opts)
        data
      end

      # Checkout cart.
      # Checkout cart, Making an order.
      # @param order Required order details.
      # @param [Hash] opts the optional parameters
      # @return [Array<(Order, Fixnum, Hash)>] Order data, response status code and response headers
      def checkout_with_http_info(order, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.checkout ...'
        end
        # verify the required parameter 'order' is set
        if api_client.config.client_side_validation && order.nil?
          fail ArgumentError, "Missing the required parameter 'order' when calling ShoppingCart.checkout"
        end
        # resource path
        local_var_path = '/shoppingCarts/checkout'

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = api_client.object_to_http_body(order)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Order')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#checkout\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Remove item.
      # Remove item from shopping cart
      # @param item_id Item ID to delete.
      # @param [Hash] opts the optional parameters
      # @return [ShoppingCart]
      def delete_item(item_id, opts = {})
        data, _status_code, _headers = delete_item_with_http_info(item_id, opts)
        data
      end

      # Remove item.
      # Remove item from shopping cart
      # @param item_id Item ID to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(ShoppingCart, Fixnum, Hash)>] ShoppingCart data, response status code and response headers
      def delete_item_with_http_info(item_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.delete_item ...'
        end
        # verify the required parameter 'item_id' is set
        if api_client.config.client_side_validation && item_id.nil?
          fail ArgumentError, "Missing the required parameter 'item_id' when calling ShoppingCart.delete_item"
        end
        # resource path
        local_var_path = '/shoppingCarts/{itemId}'.sub('{' + 'itemId' + '}', item_id.to_s)

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = nil
        auth_names = []
        data, status_code, headers = api_client.call_api(:DELETE, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'ShoppingCart')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#delete_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Empty cart.
      # Empty the shopping cart.
      # @param [Hash] opts the optional parameters
      # @return [ShoppingCart]
      def empty(opts = {})
        data, _status_code, _headers = empty_with_http_info(opts)
        data
      end

      # Empty cart.
      # Empty the shopping cart.
      # @param [Hash] opts the optional parameters
      # @return [Array<(ShoppingCart, Fixnum, Hash)>] ShoppingCart data, response status code and response headers
      def empty_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.empty ...'
        end
        # resource path
        local_var_path = '/shoppingCarts'

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = nil
        auth_names = []
        data, status_code, headers = api_client.call_api(:DELETE, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'ShoppingCart')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#empty\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Get cart.
      # Retrieve the shopping cart of the current session.
      # @param [Hash] opts the optional parameters
      # @return [ShoppingCart]
      def get(opts = {})
        data, _status_code, _headers = get_with_http_info(opts)
        data
      end

      # Get cart.
      # Retrieve the shopping cart of the current session.
      # @param [Hash] opts the optional parameters
      # @return [Array<(ShoppingCart, Fixnum, Hash)>] ShoppingCart data, response status code and response headers
      def get_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.get ...'
        end
        # resource path
        local_var_path = '/shoppingCarts'

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = nil
        auth_names = []
        data, status_code, headers = api_client.call_api(:GET, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'ShoppingCart')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update cart.
      # Update cart item.
      # @param item_id Item ID to update.
      # @param item Line item to update.
      # @param [Hash] opts the optional parameters
      # @return [ShoppingCart]
      def update_item(item_id, item, opts = {})
        data, _status_code, _headers = update_item_with_http_info(item_id, item, opts)
        data
      end

      # Update cart.
      # Update cart item.
      # @param item_id Item ID to update.
      # @param item Line item to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(ShoppingCart, Fixnum, Hash)>] ShoppingCart data, response status code and response headers
      def update_item_with_http_info(item_id, item, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: ShoppingCart.update_item ...'
        end
        # verify the required parameter 'item_id' is set
        if api_client.config.client_side_validation && item_id.nil?
          fail ArgumentError, "Missing the required parameter 'item_id' when calling ShoppingCart.update_item"
        end
        # verify the required parameter 'item' is set
        if api_client.config.client_side_validation && item.nil?
          fail ArgumentError, "Missing the required parameter 'item' when calling ShoppingCart.update_item"
        end
        # resource path
        local_var_path = '/shoppingCarts/{itemId}'.sub('{' + 'itemId' + '}', item_id.to_s)

        # query parameters
        query_params = opts

        # header parameters
        header_params = {}
        # HTTP header 'Accept' (if needed)
        header_params['Accept'] = api_client.select_header_accept(['application/json'])
        # HTTP header 'Content-Type'
        header_params['Content-Type'] = api_client.select_header_content_type(['application/json'])

        # form parameters
        form_params = {}

        # http body (model)
        post_body = api_client.object_to_http_body(item)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'ShoppingCart')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: ShoppingCart#update_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end
