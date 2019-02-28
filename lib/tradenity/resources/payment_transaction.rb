=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class PaymentTransaction

  
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

    attr_accessor :status

    attr_accessor :type

    attr_accessor :payment

    attr_accessor :order

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { 
        :'id' => :'id',
        :'__meta' => :'__meta',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'status' => :'status',
        :'type' => :'type',
        :'payment' => :'payment',
        :'order' => :'order'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'status' => :'String',
        :'type' => :'String',
        :'payment' => :'Payment',
        :'order' => :'Order'
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

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'payment')
        self.payment = attributes[:'payment']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @payment.nil?
        invalid_properties.push('invalid value for "payment", payment cannot be nil.')
      end

      if @order.nil?
        invalid_properties.push('invalid value for "order", order cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['completed', 'pending', 'failed'])
      return false unless status_validator.valid?(@status)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['payment', 'refund'])
      return false unless type_validator.valid?(@type)
      return false if @payment.nil?
      return false if @order.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['completed', 'pending', 'failed'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['payment', 'refund'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          __meta == o.__meta &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          status == o.status &&
          type == o.type &&
          payment == o.payment &&
          order == o.order
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, status, type, payment, order].hash
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

    # Create PaymentTransaction
    # Create a new PaymentTransaction
    def create
      data = self.class.create_payment_transaction(self)
      self.id = data.id
      data
    end

    # Update PaymentTransaction
    # Update attributes of PaymentTransaction
    # @return [PaymentTransaction]
    def update
      self.class.update_payment_transaction_by_id(self.id, self)
    end

    # Delete PaymentTransaction
    # Delete this instance of PaymentTransaction.
    # @return [nil]
    def delete
      self.class.delete_payment_transaction_by_id(self.id)
    end

    class << self

      # List PaymentTransactions
      # Return a list of PaymentTransactions
      # @param [Hash] opts the optional parameters
      # @return [Page<PaymentTransaction>]
      def find_all
        list_all_payment_transactions
      end

      # Find List of PaymentTransaction
      # Return multiple instances of PaymentTransaction by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_payment_transactions(opts)
      end

      # Find PaymentTransaction by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [PaymentTransaction]
      def find_one_by(opts = {})
        list_all_payment_transactions(opts)[0]
      end

      # Find PaymentTransaction
      # Return single instance of PaymentTransaction by its ID.
      # @param id ID of PaymentTransaction to return
      # @return [PaymentTransaction]
      def find_by_id(id)
        get_payment_transaction_by_id(id)
      end

      # Delete PaymentTransaction
      # Delete an instance of PaymentTransaction by its ID.
      # @param id ID of PaymentTransaction to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_payment_transaction_by_id(id)
      end

      # Create PaymentTransaction
      # Create a new PaymentTransaction
      # @param payment_transaction Attributes of paymentTransaction to create
      # @param [Hash] opts the optional parameters
      # @return [PaymentTransaction]
      def create_payment_transaction(payment_transaction, opts = {})
        data, _status_code, _headers = create_payment_transaction_with_http_info(payment_transaction, opts)
        data
      end

      # Create PaymentTransaction
      # Create a new PaymentTransaction
      # @param payment_transaction Attributes of paymentTransaction to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(PaymentTransaction, Fixnum, Hash)>] PaymentTransaction data, response status code and response headers
      def create_payment_transaction_with_http_info(payment_transaction, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.create_payment_transaction ...'
        end
        # verify the required parameter 'payment_transaction' is set
        if api_client.config.client_side_validation && payment_transaction.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction' when calling PaymentTransaction.create_payment_transaction"
        end
        # resource path
        local_var_path = '/paymentTransactions'

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
        post_body = api_client.object_to_http_body(payment_transaction)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'PaymentTransaction')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#create_payment_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete PaymentTransaction
      # Delete an instance of PaymentTransaction by its ID.
      # @param payment_transaction_id ID of paymentTransaction to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_payment_transaction_by_id(payment_transaction_id, opts = {})
        delete_payment_transaction_by_id_with_http_info(payment_transaction_id, opts)
        nil
      end

      # Delete PaymentTransaction
      # Delete an instance of PaymentTransaction by its ID.
      # @param payment_transaction_id ID of paymentTransaction to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_payment_transaction_by_id_with_http_info(payment_transaction_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.delete_payment_transaction_by_id ...'
        end
        # verify the required parameter 'payment_transaction_id' is set
        if api_client.config.client_side_validation && payment_transaction_id.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction_id' when calling PaymentTransaction.delete_payment_transaction_by_id"
        end
        # resource path
        local_var_path = '/paymentTransactions/{paymentTransactionId}'.sub('{' + 'paymentTransactionId' + '}', payment_transaction_id.to_s)

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
          :auth_names => auth_names)
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#delete_payment_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find PaymentTransaction
      # Return single instance of PaymentTransaction by its ID.
      # @param payment_transaction_id ID of paymentTransaction to return
      # @param [Hash] opts the optional parameters
      # @return [PaymentTransaction]
      def get_payment_transaction_by_id(payment_transaction_id, opts = {})
        data, _status_code, _headers = get_payment_transaction_by_id_with_http_info(payment_transaction_id, opts)
        data
      end

      # Find PaymentTransaction
      # Return single instance of PaymentTransaction by its ID.
      # @param payment_transaction_id ID of paymentTransaction to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(PaymentTransaction, Fixnum, Hash)>] PaymentTransaction data, response status code and response headers
      def get_payment_transaction_by_id_with_http_info(payment_transaction_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.get_payment_transaction_by_id ...'
        end
        # verify the required parameter 'payment_transaction_id' is set
        if api_client.config.client_side_validation && payment_transaction_id.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction_id' when calling PaymentTransaction.get_payment_transaction_by_id"
        end
        # resource path
        local_var_path = '/paymentTransactions/{paymentTransactionId}'.sub('{' + 'paymentTransactionId' + '}', payment_transaction_id.to_s)

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
          :return_type => 'PaymentTransaction')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#get_payment_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List PaymentTransactions
      # Return a list of PaymentTransactions
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<PaymentTransaction>]
      def list_all_payment_transactions(opts = {})
        data, _status_code, _headers = list_all_payment_transactions_with_http_info(opts)
        data
      end

      # List PaymentTransactions
      # Return a list of PaymentTransactions
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<PaymentTransaction>, Fixnum, Hash)>] Page<PaymentTransaction> data, response status code and response headers
      def list_all_payment_transactions_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.list_all_payment_transactions ...'
        end
        # resource path
        local_var_path = '/paymentTransactions'

        # query parameters
        query_params = opts
        # query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
        # query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
        # query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

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
          :return_type => 'Page<PaymentTransaction>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#list_all_payment_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace PaymentTransaction
      # Replace all attributes of PaymentTransaction
      # @param payment_transaction_id ID of paymentTransaction to replace
      # @param payment_transaction Attributes of paymentTransaction to replace
      # @param [Hash] opts the optional parameters
      # @return [PaymentTransaction]
      def replace_payment_transaction_by_id(payment_transaction_id, payment_transaction, opts = {})
        data, _status_code, _headers = replace_payment_transaction_by_id_with_http_info(payment_transaction_id, payment_transaction, opts)
        data
      end

      # Replace PaymentTransaction
      # Replace all attributes of PaymentTransaction
      # @param payment_transaction_id ID of paymentTransaction to replace
      # @param payment_transaction Attributes of paymentTransaction to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(PaymentTransaction, Fixnum, Hash)>] PaymentTransaction data, response status code and response headers
      def replace_payment_transaction_by_id_with_http_info(payment_transaction_id, payment_transaction, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.replace_payment_transaction_by_id ...'
        end
        # verify the required parameter 'payment_transaction_id' is set
        if api_client.config.client_side_validation && payment_transaction_id.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction_id' when calling PaymentTransaction.replace_payment_transaction_by_id"
        end
        # verify the required parameter 'payment_transaction' is set
        if api_client.config.client_side_validation && payment_transaction.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction' when calling PaymentTransaction.replace_payment_transaction_by_id"
        end
        # resource path
        local_var_path = '/paymentTransactions/{paymentTransactionId}'.sub('{' + 'paymentTransactionId' + '}', payment_transaction_id.to_s)

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
        post_body = api_client.object_to_http_body(payment_transaction)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'PaymentTransaction')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#replace_payment_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update PaymentTransaction
      # Update attributes of PaymentTransaction
      # @param payment_transaction_id ID of paymentTransaction to update.
      # @param payment_transaction Attributes of paymentTransaction to update.
      # @param [Hash] opts the optional parameters
      # @return [PaymentTransaction]
      def update_payment_transaction_by_id(payment_transaction_id, payment_transaction, opts = {})
        data, _status_code, _headers = update_payment_transaction_by_id_with_http_info(payment_transaction_id, payment_transaction, opts)
        data
      end

      # Update PaymentTransaction
      # Update attributes of PaymentTransaction
      # @param payment_transaction_id ID of paymentTransaction to update.
      # @param payment_transaction Attributes of paymentTransaction to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(PaymentTransaction, Fixnum, Hash)>] PaymentTransaction data, response status code and response headers
      def update_payment_transaction_by_id_with_http_info(payment_transaction_id, payment_transaction, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: PaymentTransaction.update_payment_transaction_by_id ...'
        end
        # verify the required parameter 'payment_transaction_id' is set
        if api_client.config.client_side_validation && payment_transaction_id.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction_id' when calling PaymentTransaction.update_payment_transaction_by_id"
        end
        # verify the required parameter 'payment_transaction' is set
        if api_client.config.client_side_validation && payment_transaction.nil?
          fail ArgumentError, "Missing the required parameter 'payment_transaction' when calling PaymentTransaction.update_payment_transaction_by_id"
        end
        # resource path
        local_var_path = '/paymentTransactions/{paymentTransactionId}'.sub('{' + 'paymentTransactionId' + '}', payment_transaction_id.to_s)

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
        post_body = api_client.object_to_http_body(payment_transaction)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'PaymentTransaction')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: PaymentTransaction#update_payment_transaction_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end