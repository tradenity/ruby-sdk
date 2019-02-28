=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class OptionValue

  
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

    attr_accessor :option

    attr_accessor :value

    attr_accessor :code

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { 
        :'id' => :'id',
        :'__meta' => :'__meta',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'option' => :'option',
        :'value' => :'value',
        :'code' => :'code'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'option' => :'Option',
        :'value' => :'String',
        :'code' => :'String'
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

      if attributes.has_key?(:'option')
        self.option = attributes[:'option']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @option.nil?
        invalid_properties.push('invalid value for "option", option cannot be nil.')
      end

      if @value.nil?
        invalid_properties.push('invalid value for "value", value cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @option.nil?
      return false if @value.nil?
      return false if @code.nil?
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
          option == o.option &&
          value == o.value &&
          code == o.code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, option, value, code].hash
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

    # Create OptionValue
    # Create a new OptionValue
    def create
      data = self.class.create_option_value(self)
      self.id = data.id
      data
    end

    # Update OptionValue
    # Update attributes of OptionValue
    # @return [OptionValue]
    def update
      self.class.update_option_value_by_id(self.id, self)
    end

    # Delete OptionValue
    # Delete this instance of OptionValue.
    # @return [nil]
    def delete
      self.class.delete_option_value_by_id(self.id)
    end

    class << self

      # List OptionValues
      # Return a list of OptionValues
      # @param [Hash] opts the optional parameters
      # @return [Page<OptionValue>]
      def find_all
        list_all_option_values
      end

      # Find List of OptionValue
      # Return multiple instances of OptionValue by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_option_values(opts)
      end

      # Find OptionValue by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [OptionValue]
      def find_one_by(opts = {})
        list_all_option_values(opts)[0]
      end

      # Find OptionValue
      # Return single instance of OptionValue by its ID.
      # @param id ID of OptionValue to return
      # @return [OptionValue]
      def find_by_id(id)
        get_option_value_by_id(id)
      end

      # Delete OptionValue
      # Delete an instance of OptionValue by its ID.
      # @param id ID of OptionValue to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_option_value_by_id(id)
      end

      # Create OptionValue
      # Create a new OptionValue
      # @param option_value Attributes of optionValue to create
      # @param [Hash] opts the optional parameters
      # @return [OptionValue]
      def create_option_value(option_value, opts = {})
        data, _status_code, _headers = create_option_value_with_http_info(option_value, opts)
        data
      end

      # Create OptionValue
      # Create a new OptionValue
      # @param option_value Attributes of optionValue to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(OptionValue, Fixnum, Hash)>] OptionValue data, response status code and response headers
      def create_option_value_with_http_info(option_value, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.create_option_value ...'
        end
        # verify the required parameter 'option_value' is set
        if api_client.config.client_side_validation && option_value.nil?
          fail ArgumentError, "Missing the required parameter 'option_value' when calling OptionValue.create_option_value"
        end
        # resource path
        local_var_path = '/optionValues'

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
        post_body = api_client.object_to_http_body(option_value)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OptionValue')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OptionValue#create_option_value\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete OptionValue
      # Delete an instance of OptionValue by its ID.
      # @param option_value_id ID of optionValue to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_option_value_by_id(option_value_id, opts = {})
        delete_option_value_by_id_with_http_info(option_value_id, opts)
        nil
      end

      # Delete OptionValue
      # Delete an instance of OptionValue by its ID.
      # @param option_value_id ID of optionValue to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_option_value_by_id_with_http_info(option_value_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.delete_option_value_by_id ...'
        end
        # verify the required parameter 'option_value_id' is set
        if api_client.config.client_side_validation && option_value_id.nil?
          fail ArgumentError, "Missing the required parameter 'option_value_id' when calling OptionValue.delete_option_value_by_id"
        end
        # resource path
        local_var_path = '/optionValues/{optionValueId}'.sub('{' + 'optionValueId' + '}', option_value_id.to_s)

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
          api_client.config.logger.debug "API called: OptionValue#delete_option_value_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find OptionValue
      # Return single instance of OptionValue by its ID.
      # @param option_value_id ID of optionValue to return
      # @param [Hash] opts the optional parameters
      # @return [OptionValue]
      def get_option_value_by_id(option_value_id, opts = {})
        data, _status_code, _headers = get_option_value_by_id_with_http_info(option_value_id, opts)
        data
      end

      # Find OptionValue
      # Return single instance of OptionValue by its ID.
      # @param option_value_id ID of optionValue to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(OptionValue, Fixnum, Hash)>] OptionValue data, response status code and response headers
      def get_option_value_by_id_with_http_info(option_value_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.get_option_value_by_id ...'
        end
        # verify the required parameter 'option_value_id' is set
        if api_client.config.client_side_validation && option_value_id.nil?
          fail ArgumentError, "Missing the required parameter 'option_value_id' when calling OptionValue.get_option_value_by_id"
        end
        # resource path
        local_var_path = '/optionValues/{optionValueId}'.sub('{' + 'optionValueId' + '}', option_value_id.to_s)

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
          :return_type => 'OptionValue')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OptionValue#get_option_value_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List OptionValues
      # Return a list of OptionValues
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<OptionValue>]
      def list_all_option_values(opts = {})
        data, _status_code, _headers = list_all_option_values_with_http_info(opts)
        data
      end

      # List OptionValues
      # Return a list of OptionValues
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<OptionValue>, Fixnum, Hash)>] Page<OptionValue> data, response status code and response headers
      def list_all_option_values_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.list_all_option_values ...'
        end
        # resource path
        local_var_path = '/optionValues'

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
          :return_type => 'Page<OptionValue>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OptionValue#list_all_option_values\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace OptionValue
      # Replace all attributes of OptionValue
      # @param option_value_id ID of optionValue to replace
      # @param option_value Attributes of optionValue to replace
      # @param [Hash] opts the optional parameters
      # @return [OptionValue]
      def replace_option_value_by_id(option_value_id, option_value, opts = {})
        data, _status_code, _headers = replace_option_value_by_id_with_http_info(option_value_id, option_value, opts)
        data
      end

      # Replace OptionValue
      # Replace all attributes of OptionValue
      # @param option_value_id ID of optionValue to replace
      # @param option_value Attributes of optionValue to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(OptionValue, Fixnum, Hash)>] OptionValue data, response status code and response headers
      def replace_option_value_by_id_with_http_info(option_value_id, option_value, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.replace_option_value_by_id ...'
        end
        # verify the required parameter 'option_value_id' is set
        if api_client.config.client_side_validation && option_value_id.nil?
          fail ArgumentError, "Missing the required parameter 'option_value_id' when calling OptionValue.replace_option_value_by_id"
        end
        # verify the required parameter 'option_value' is set
        if api_client.config.client_side_validation && option_value.nil?
          fail ArgumentError, "Missing the required parameter 'option_value' when calling OptionValue.replace_option_value_by_id"
        end
        # resource path
        local_var_path = '/optionValues/{optionValueId}'.sub('{' + 'optionValueId' + '}', option_value_id.to_s)

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
        post_body = api_client.object_to_http_body(option_value)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OptionValue')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OptionValue#replace_option_value_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update OptionValue
      # Update attributes of OptionValue
      # @param option_value_id ID of optionValue to update.
      # @param option_value Attributes of optionValue to update.
      # @param [Hash] opts the optional parameters
      # @return [OptionValue]
      def update_option_value_by_id(option_value_id, option_value, opts = {})
        data, _status_code, _headers = update_option_value_by_id_with_http_info(option_value_id, option_value, opts)
        data
      end

      # Update OptionValue
      # Update attributes of OptionValue
      # @param option_value_id ID of optionValue to update.
      # @param option_value Attributes of optionValue to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(OptionValue, Fixnum, Hash)>] OptionValue data, response status code and response headers
      def update_option_value_by_id_with_http_info(option_value_id, option_value, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OptionValue.update_option_value_by_id ...'
        end
        # verify the required parameter 'option_value_id' is set
        if api_client.config.client_side_validation && option_value_id.nil?
          fail ArgumentError, "Missing the required parameter 'option_value_id' when calling OptionValue.update_option_value_by_id"
        end
        # verify the required parameter 'option_value' is set
        if api_client.config.client_side_validation && option_value.nil?
          fail ArgumentError, "Missing the required parameter 'option_value' when calling OptionValue.update_option_value_by_id"
        end
        # resource path
        local_var_path = '/optionValues/{optionValueId}'.sub('{' + 'optionValueId' + '}', option_value_id.to_s)

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
        post_body = api_client.object_to_http_body(option_value)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OptionValue')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OptionValue#update_option_value_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end