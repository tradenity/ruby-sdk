=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class Customer

  
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

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :email

    attr_accessor :username

    attr_accessor :password

    attr_accessor :status

    attr_accessor :photo

    attr_accessor :billing_address

    attr_accessor :shipping_address

    attr_accessor :customer_groups

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
        :'first_name' => :'firstName',
        :'last_name' => :'lastName',
        :'email' => :'email',
        :'username' => :'username',
        :'password' => :'password',
        :'status' => :'status',
        :'photo' => :'photo',
        :'billing_address' => :'billingAddress',
        :'shipping_address' => :'shippingAddress',
        :'customer_groups' => :'customerGroups'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email' => :'String',
        :'username' => :'String',
        :'password' => :'String',
        :'status' => :'String',
        :'photo' => :'Photo',
        :'billing_address' => :'Address',
        :'shipping_address' => :'Address',
        :'customer_groups' => :'Array<CustomerGroup>'
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

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'photo')
        self.photo = attributes[:'photo']
      end

      if attributes.has_key?(:'billingAddress')
        self.billing_address = attributes[:'billingAddress']
      end

      if attributes.has_key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.has_key?(:'shippingAddress')
        self.shipping_address = attributes[:'shippingAddress']
      end

      if attributes.has_key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

      if attributes.has_key?(:'customerGroups')
        if (value = attributes[:'customerGroups']).is_a?(Array)
          self.customer_groups = value
        end
      end

      if attributes.has_key?(:'customer_groups')
        if (value = attributes[:'customer_groups']).is_a?(Array)
          self.customer_groups = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      if @last_name.nil?
        invalid_properties.push('invalid value for "last_name", last_name cannot be nil.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      if @password.nil?
        invalid_properties.push('invalid value for "password", password cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      return false if @last_name.nil?
      return false if @email.nil?
      return false if @username.nil?
      return false if @password.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['enabled', 'disabled'])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ['enabled', 'disabled'])
      unless validator.valid?(status)
        fail ArgumentError, 'invalid value for "status", must be one of #{validator.allowable_values}.'
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          __meta == o.__meta &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          username == o.username &&
          password == o.password &&
          status == o.status &&
          photo == o.photo &&
          billing_address == o.billing_address &&
          shipping_address == o.shipping_address &&
          customer_groups == o.customer_groups
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, first_name, last_name, email, username, password, status, photo, billing_address, shipping_address, customer_groups].hash
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

    # Create Customer
    # Create a new Customer
    def create
      data = self.class.create_customer(self)
      self.id = data.id
      data
    end

    # Update Customer
    # Update attributes of Customer
    # @return [Customer]
    def update
      self.class.update_customer_by_id(self.id, self)
    end

    # Delete Customer
    # Delete this instance of Customer.
    # @return [nil]
    def delete
      self.class.delete_customer_by_id(self.id)
    end

    class << self

      # List Customers
      # Return a list of Customers
      # @param [Hash] opts the optional parameters
      # @return [Page<Customer>]
      def find_all
        list_all_customers
      end

      # Find List of Customer
      # Return multiple instances of Customer by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_customers(opts)
      end

      # Find Customer by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [Customer]
      def find_one_by(opts = {})
        list_all_customers(opts)[0]
      end

      # Find Customer
      # Return single instance of Customer by its ID.
      # @param id ID of Customer to return
      # @return [Customer]
      def find_by_id(id)
        get_customer_by_id(id)
      end

      # Delete Customer
      # Delete an instance of Customer by its ID.
      # @param id ID of Customer to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_customer_by_id(id)
      end

      # Create Customer
      # Create a new Customer
      # @param customer Attributes of customer to create
      # @param [Hash] opts the optional parameters
      # @return [Customer]
      def create_customer(customer, opts = {})
        data, _status_code, _headers = create_customer_with_http_info(customer, opts)
        data
      end

      # Create Customer
      # Create a new Customer
      # @param customer Attributes of customer to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(Customer, Fixnum, Hash)>] Customer data, response status code and response headers
      def create_customer_with_http_info(customer, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.create_customer ...'
        end
        # verify the required parameter 'customer' is set
        if api_client.config.client_side_validation && customer.nil?
          fail ArgumentError, "Missing the required parameter 'customer' when calling Customer.create_customer"
        end
        # resource path
        local_var_path = '/customers'

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
        post_body = api_client.object_to_http_body(customer)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Customer')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Customer#create_customer\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete Customer
      # Delete an instance of Customer by its ID.
      # @param customer_id ID of customer to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_customer_by_id(customer_id, opts = {})
        delete_customer_by_id_with_http_info(customer_id, opts)
        nil
      end

      # Delete Customer
      # Delete an instance of Customer by its ID.
      # @param customer_id ID of customer to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_customer_by_id_with_http_info(customer_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.delete_customer_by_id ...'
        end
        # verify the required parameter 'customer_id' is set
        if api_client.config.client_side_validation && customer_id.nil?
          fail ArgumentError, "Missing the required parameter 'customer_id' when calling Customer.delete_customer_by_id"
        end
        # resource path
        local_var_path = '/customers/{customerId}'.sub('{' + 'customerId' + '}', customer_id.to_s)

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
          api_client.config.logger.debug "API called: Customer#delete_customer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find Customer
      # Return single instance of Customer by its ID.
      # @param customer_id ID of customer to return
      # @param [Hash] opts the optional parameters
      # @return [Customer]
      def get_customer_by_id(customer_id, opts = {})
        data, _status_code, _headers = get_customer_by_id_with_http_info(customer_id, opts)
        data
      end

      # Find Customer
      # Return single instance of Customer by its ID.
      # @param customer_id ID of customer to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(Customer, Fixnum, Hash)>] Customer data, response status code and response headers
      def get_customer_by_id_with_http_info(customer_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.get_customer_by_id ...'
        end
        # verify the required parameter 'customer_id' is set
        if api_client.config.client_side_validation && customer_id.nil?
          fail ArgumentError, "Missing the required parameter 'customer_id' when calling Customer.get_customer_by_id"
        end
        # resource path
        local_var_path = '/customers/{customerId}'.sub('{' + 'customerId' + '}', customer_id.to_s)

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
          :return_type => 'Customer')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Customer#get_customer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List Customers
      # Return a list of Customers
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<Customer>]
      def list_all_customers(opts = {})
        data, _status_code, _headers = list_all_customers_with_http_info(opts)
        data
      end

      # List Customers
      # Return a list of Customers
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<Customer>, Fixnum, Hash)>] Page<Customer> data, response status code and response headers
      def list_all_customers_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.list_all_customers ...'
        end
        # resource path
        local_var_path = '/customers'

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
          :return_type => 'Page<Customer>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Customer#list_all_customers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace Customer
      # Replace all attributes of Customer
      # @param customer_id ID of customer to replace
      # @param customer Attributes of customer to replace
      # @param [Hash] opts the optional parameters
      # @return [Customer]
      def replace_customer_by_id(customer_id, customer, opts = {})
        data, _status_code, _headers = replace_customer_by_id_with_http_info(customer_id, customer, opts)
        data
      end

      # Replace Customer
      # Replace all attributes of Customer
      # @param customer_id ID of customer to replace
      # @param customer Attributes of customer to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(Customer, Fixnum, Hash)>] Customer data, response status code and response headers
      def replace_customer_by_id_with_http_info(customer_id, customer, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.replace_customer_by_id ...'
        end
        # verify the required parameter 'customer_id' is set
        if api_client.config.client_side_validation && customer_id.nil?
          fail ArgumentError, "Missing the required parameter 'customer_id' when calling Customer.replace_customer_by_id"
        end
        # verify the required parameter 'customer' is set
        if api_client.config.client_side_validation && customer.nil?
          fail ArgumentError, "Missing the required parameter 'customer' when calling Customer.replace_customer_by_id"
        end
        # resource path
        local_var_path = '/customers/{customerId}'.sub('{' + 'customerId' + '}', customer_id.to_s)

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
        post_body = api_client.object_to_http_body(customer)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Customer')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Customer#replace_customer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update Customer
      # Update attributes of Customer
      # @param customer_id ID of customer to update.
      # @param customer Attributes of customer to update.
      # @param [Hash] opts the optional parameters
      # @return [Customer]
      def update_customer_by_id(customer_id, customer, opts = {})
        data, _status_code, _headers = update_customer_by_id_with_http_info(customer_id, customer, opts)
        data
      end

      # Update Customer
      # Update attributes of Customer
      # @param customer_id ID of customer to update.
      # @param customer Attributes of customer to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(Customer, Fixnum, Hash)>] Customer data, response status code and response headers
      def update_customer_by_id_with_http_info(customer_id, customer, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Customer.update_customer_by_id ...'
        end
        # verify the required parameter 'customer_id' is set
        if api_client.config.client_side_validation && customer_id.nil?
          fail ArgumentError, "Missing the required parameter 'customer_id' when calling Customer.update_customer_by_id"
        end
        # verify the required parameter 'customer' is set
        if api_client.config.client_side_validation && customer.nil?
          fail ArgumentError, "Missing the required parameter 'customer' when calling Customer.update_customer_by_id"
        end
        # resource path
        local_var_path = '/customers/{customerId}'.sub('{' + 'customerId' + '}', customer_id.to_s)

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
        post_body = api_client.object_to_http_body(customer)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Customer')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Customer#update_customer_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end