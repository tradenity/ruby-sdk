=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class Address

  
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

    attr_accessor :street_line1

    attr_accessor :street_line2

    attr_accessor :city

    attr_accessor :state

    attr_accessor :zip_code

    attr_accessor :country

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { 
        :'id' => :'id',
        :'__meta' => :'__meta',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'street_line1' => :'streetLine1',
        :'street_line2' => :'streetLine2',
        :'city' => :'city',
        :'state' => :'state',
        :'zip_code' => :'zipCode',
        :'country' => :'country'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'street_line1' => :'String',
        :'street_line2' => :'String',
        :'city' => :'String',
        :'state' => :'State',
        :'zip_code' => :'String',
        :'country' => :'Country'
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

      if attributes.has_key?(:'streetLine1')
        self.street_line1 = attributes[:'streetLine1']
      end

      if attributes.has_key?(:'street_line1')
        self.street_line1 = attributes[:'street_line1']
      end

      if attributes.has_key?(:'streetLine2')
        self.street_line2 = attributes[:'streetLine2']
      end

      if attributes.has_key?(:'street_line2')
        self.street_line2 = attributes[:'street_line2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'zipCode')
        self.zip_code = attributes[:'zipCode']
      end

      if attributes.has_key?(:'zip_code')
        self.zip_code = attributes[:'zip_code']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @street_line1.nil?
        invalid_properties.push('invalid value for "street_line1", street_line1 cannot be nil.')
      end

      if @city.nil?
        invalid_properties.push('invalid value for "city", city cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @zip_code.nil?
        invalid_properties.push('invalid value for "zip_code", zip_code cannot be nil.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @street_line1.nil?
      return false if @city.nil?
      return false if @state.nil?
      return false if @zip_code.nil?
      return false if @country.nil?
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
          street_line1 == o.street_line1 &&
          street_line2 == o.street_line2 &&
          city == o.city &&
          state == o.state &&
          zip_code == o.zip_code &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, street_line1, street_line2, city, state, zip_code, country].hash
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

    # Create Address
    # Create a new Address
    def create
      data = self.class.create_address(self)
      self.id = data.id
      data
    end

    # Update Address
    # Update attributes of Address
    # @return [Address]
    def update
      self.class.update_address_by_id(self.id, self)
    end

    # Delete Address
    # Delete this instance of Address.
    # @return [nil]
    def delete
      self.class.delete_address_by_id(self.id)
    end

    class << self

      # List Addresss
      # Return a list of Addresss
      # @param [Hash] opts the optional parameters
      # @return [Page<Address>]
      def find_all
        list_all_addresses
      end

      # Find List of Address
      # Return multiple instances of Address by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_addresses(opts)
      end

      # Find Address by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [Address]
      def find_one_by(opts = {})
        list_all_addresses(opts)[0]
      end

      # Find Address
      # Return single instance of Address by its ID.
      # @param id ID of Address to return
      # @return [Address]
      def find_by_id(id)
        get_address_by_id(id)
      end

      # Delete Address
      # Delete an instance of Address by its ID.
      # @param id ID of Address to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_address_by_id(id)
      end

      # Create Address
      # Create a new Address
      # @param address Attributes of address to create
      # @param [Hash] opts the optional parameters
      # @return [Address]
      def create_address(address, opts = {})
        data, _status_code, _headers = create_address_with_http_info(address, opts)
        data
      end

      # Create Address
      # Create a new Address
      # @param address Attributes of address to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
      def create_address_with_http_info(address, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.create_address ...'
        end
        # verify the required parameter 'address' is set
        if api_client.config.client_side_validation && address.nil?
          fail ArgumentError, "Missing the required parameter 'address' when calling Address.create_address"
        end
        # resource path
        local_var_path = '/addresses'

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
        post_body = api_client.object_to_http_body(address)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Address')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Address#create_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete Address
      # Delete an instance of Address by its ID.
      # @param address_id ID of address to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_address_by_id(address_id, opts = {})
        delete_address_by_id_with_http_info(address_id, opts)
        nil
      end

      # Delete Address
      # Delete an instance of Address by its ID.
      # @param address_id ID of address to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_address_by_id_with_http_info(address_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.delete_address_by_id ...'
        end
        # verify the required parameter 'address_id' is set
        if api_client.config.client_side_validation && address_id.nil?
          fail ArgumentError, "Missing the required parameter 'address_id' when calling Address.delete_address_by_id"
        end
        # resource path
        local_var_path = '/addresses/{addressId}'.sub('{' + 'addressId' + '}', address_id.to_s)

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
          api_client.config.logger.debug "API called: Address#delete_address_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find Address
      # Return single instance of Address by its ID.
      # @param address_id ID of address to return
      # @param [Hash] opts the optional parameters
      # @return [Address]
      def get_address_by_id(address_id, opts = {})
        data, _status_code, _headers = get_address_by_id_with_http_info(address_id, opts)
        data
      end

      # Find Address
      # Return single instance of Address by its ID.
      # @param address_id ID of address to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
      def get_address_by_id_with_http_info(address_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.get_address_by_id ...'
        end
        # verify the required parameter 'address_id' is set
        if api_client.config.client_side_validation && address_id.nil?
          fail ArgumentError, "Missing the required parameter 'address_id' when calling Address.get_address_by_id"
        end
        # resource path
        local_var_path = '/addresses/{addressId}'.sub('{' + 'addressId' + '}', address_id.to_s)

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
          :return_type => 'Address')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Address#get_address_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List Addresses
      # Return a list of Addresses
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<Address>]
      def list_all_addresses(opts = {})
        data, _status_code, _headers = list_all_addresses_with_http_info(opts)
        data
      end

      # List Addresses
      # Return a list of Addresses
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<Address>, Fixnum, Hash)>] Page<Address> data, response status code and response headers
      def list_all_addresses_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.list_all_addresses ...'
        end
        # resource path
        local_var_path = '/addresses'

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
          :return_type => 'Page<Address>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Address#list_all_addresses\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace Address
      # Replace all attributes of Address
      # @param address_id ID of address to replace
      # @param address Attributes of address to replace
      # @param [Hash] opts the optional parameters
      # @return [Address]
      def replace_address_by_id(address_id, address, opts = {})
        data, _status_code, _headers = replace_address_by_id_with_http_info(address_id, address, opts)
        data
      end

      # Replace Address
      # Replace all attributes of Address
      # @param address_id ID of address to replace
      # @param address Attributes of address to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
      def replace_address_by_id_with_http_info(address_id, address, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.replace_address_by_id ...'
        end
        # verify the required parameter 'address_id' is set
        if api_client.config.client_side_validation && address_id.nil?
          fail ArgumentError, "Missing the required parameter 'address_id' when calling Address.replace_address_by_id"
        end
        # verify the required parameter 'address' is set
        if api_client.config.client_side_validation && address.nil?
          fail ArgumentError, "Missing the required parameter 'address' when calling Address.replace_address_by_id"
        end
        # resource path
        local_var_path = '/addresses/{addressId}'.sub('{' + 'addressId' + '}', address_id.to_s)

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
        post_body = api_client.object_to_http_body(address)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Address')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Address#replace_address_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update Address
      # Update attributes of Address
      # @param address_id ID of address to update.
      # @param address Attributes of address to update.
      # @param [Hash] opts the optional parameters
      # @return [Address]
      def update_address_by_id(address_id, address, opts = {})
        data, _status_code, _headers = update_address_by_id_with_http_info(address_id, address, opts)
        data
      end

      # Update Address
      # Update attributes of Address
      # @param address_id ID of address to update.
      # @param address Attributes of address to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(Address, Fixnum, Hash)>] Address data, response status code and response headers
      def update_address_by_id_with_http_info(address_id, address, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Address.update_address_by_id ...'
        end
        # verify the required parameter 'address_id' is set
        if api_client.config.client_side_validation && address_id.nil?
          fail ArgumentError, "Missing the required parameter 'address_id' when calling Address.update_address_by_id"
        end
        # verify the required parameter 'address' is set
        if api_client.config.client_side_validation && address.nil?
          fail ArgumentError, "Missing the required parameter 'address' when calling Address.update_address_by_id"
        end
        # resource path
        local_var_path = '/addresses/{addressId}'.sub('{' + 'addressId' + '}', address_id.to_s)

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
        post_body = api_client.object_to_http_body(address)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Address')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Address#update_address_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end