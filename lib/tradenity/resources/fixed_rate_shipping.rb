=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class FixedRateShipping

  
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

    attr_accessor :name

    attr_accessor :slug

    attr_accessor :message

    attr_accessor :description

    attr_accessor :geo_zone

    attr_accessor :customer_groups

    attr_accessor :status

    attr_accessor :use_discounted_subtotal

    attr_accessor :include_taxes

    attr_accessor :cost

    attr_accessor :cost_type

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
        :'name' => :'name',
        :'slug' => :'slug',
        :'message' => :'message',
        :'description' => :'description',
        :'geo_zone' => :'geoZone',
        :'customer_groups' => :'customerGroups',
        :'status' => :'status',
        :'use_discounted_subtotal' => :'useDiscountedSubtotal',
        :'include_taxes' => :'includeTaxes',
        :'cost' => :'cost',
        :'cost_type' => :'costType'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      { 
        :'id' => :'String', 
        :'__meta' => :'InstanceMeta',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'name' => :'String',
        :'slug' => :'String',
        :'message' => :'String',
        :'description' => :'String',
        :'geo_zone' => :'GeoZone',
        :'customer_groups' => :'Array<CustomerGroup>',
        :'status' => :'String',
        :'use_discounted_subtotal' => :'BOOLEAN',
        :'include_taxes' => :'BOOLEAN',
        :'cost' => :'Integer',
        :'cost_type' => :'String'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.has_key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'geoZone')
        self.geo_zone = attributes[:'geoZone']
      end

      if attributes.has_key?(:'geo_zone')
        self.geo_zone = attributes[:'geo_zone']
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

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'useDiscountedSubtotal')
        self.use_discounted_subtotal = attributes[:'useDiscountedSubtotal']
      end

      if attributes.has_key?(:'use_discounted_subtotal')
        self.use_discounted_subtotal = attributes[:'use_discounted_subtotal']
      end

      if attributes.has_key?(:'includeTaxes')
        self.include_taxes = attributes[:'includeTaxes']
      end

      if attributes.has_key?(:'include_taxes')
        self.include_taxes = attributes[:'include_taxes']
      end

      if attributes.has_key?(:'cost')
        self.cost = attributes[:'cost']
      end

      if attributes.has_key?(:'costType')
        self.cost_type = attributes[:'costType']
      end

      if attributes.has_key?(:'cost_type')
        self.cost_type = attributes[:'cost_type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @slug.nil?
        invalid_properties.push('invalid value for "slug", slug cannot be nil.')
      end

      if @geo_zone.nil?
        invalid_properties.push('invalid value for "geo_zone", geo_zone cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @cost.nil?
        invalid_properties.push('invalid value for "cost", cost cannot be nil.')
      end

      if @cost_type.nil?
        invalid_properties.push('invalid value for "cost_type", cost_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @slug.nil?
      return false if @geo_zone.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['enabled', 'disabled'])
      return false unless status_validator.valid?(@status)
      return false if @cost.nil?
      return false if @cost_type.nil?
      cost_type_validator = EnumAttributeValidator.new('String', ['perOrder', 'perWeight', 'perItem'])
      return false unless cost_type_validator.valid?(@cost_type)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cost_type Object to be assigned
    def cost_type=(cost_type)
      validator = EnumAttributeValidator.new('String', ['perOrder', 'perWeight', 'perItem'])
      unless validator.valid?(cost_type)
        fail ArgumentError, 'invalid value for "cost_type", must be one of #{validator.allowable_values}.'
      end
      @cost_type = cost_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          __meta == o.__meta &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          name == o.name &&
          slug == o.slug &&
          message == o.message &&
          description == o.description &&
          geo_zone == o.geo_zone &&
          customer_groups == o.customer_groups &&
          status == o.status &&
          use_discounted_subtotal == o.use_discounted_subtotal &&
          include_taxes == o.include_taxes &&
          cost == o.cost &&
          cost_type == o.cost_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, name, slug, message, description, geo_zone, customer_groups, status, use_discounted_subtotal, include_taxes, cost, cost_type].hash
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

    # Create FixedRateShipping
    # Create a new FixedRateShipping
    def create
      data = self.class.create_fixed_rate_shipping(self)
      self.id = data.id
      data
    end

    # Update FixedRateShipping
    # Update attributes of FixedRateShipping
    # @return [FixedRateShipping]
    def update
      self.class.update_fixed_rate_shipping_by_id(self.id, self)
    end

    # Delete FixedRateShipping
    # Delete this instance of FixedRateShipping.
    # @return [nil]
    def delete
      self.class.delete_fixed_rate_shipping_by_id(self.id)
    end

    class << self

      # List FixedRateShippings
      # Return a list of FixedRateShippings
      # @param [Hash] opts the optional parameters
      # @return [Page<FixedRateShipping>]
      def find_all
        list_all_fixed_rate_shippings
      end

      # Find List of FixedRateShipping
      # Return multiple instances of FixedRateShipping by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_fixed_rate_shippings(opts)
      end

      # Find FixedRateShipping by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [FixedRateShipping]
      def find_one_by(opts = {})
        list_all_fixed_rate_shippings(opts)[0]
      end

      # Find FixedRateShipping
      # Return single instance of FixedRateShipping by its ID.
      # @param id ID of FixedRateShipping to return
      # @return [FixedRateShipping]
      def find_by_id(id)
        get_fixed_rate_shipping_by_id(id)
      end

      # Delete FixedRateShipping
      # Delete an instance of FixedRateShipping by its ID.
      # @param id ID of FixedRateShipping to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_fixed_rate_shipping_by_id(id)
      end

      # Create FixedRateShipping
      # Create a new FixedRateShipping
      # @param fixed_rate_shipping Attributes of fixedRateShipping to create
      # @param [Hash] opts the optional parameters
      # @return [FixedRateShipping]
      def create_fixed_rate_shipping(fixed_rate_shipping, opts = {})
        data, _status_code, _headers = create_fixed_rate_shipping_with_http_info(fixed_rate_shipping, opts)
        data
      end

      # Create FixedRateShipping
      # Create a new FixedRateShipping
      # @param fixed_rate_shipping Attributes of fixedRateShipping to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(FixedRateShipping, Fixnum, Hash)>] FixedRateShipping data, response status code and response headers
      def create_fixed_rate_shipping_with_http_info(fixed_rate_shipping, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.create_fixed_rate_shipping ...'
        end
        # verify the required parameter 'fixed_rate_shipping' is set
        if api_client.config.client_side_validation && fixed_rate_shipping.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping' when calling FixedRateShipping.create_fixed_rate_shipping"
        end
        # resource path
        local_var_path = '/fixedRateShippings'

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
        post_body = api_client.object_to_http_body(fixed_rate_shipping)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'FixedRateShipping')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: FixedRateShipping#create_fixed_rate_shipping\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete FixedRateShipping
      # Delete an instance of FixedRateShipping by its ID.
      # @param fixed_rate_shipping_id ID of fixedRateShipping to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_fixed_rate_shipping_by_id(fixed_rate_shipping_id, opts = {})
        delete_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, opts)
        nil
      end

      # Delete FixedRateShipping
      # Delete an instance of FixedRateShipping by its ID.
      # @param fixed_rate_shipping_id ID of fixedRateShipping to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.delete_fixed_rate_shipping_by_id ...'
        end
        # verify the required parameter 'fixed_rate_shipping_id' is set
        if api_client.config.client_side_validation && fixed_rate_shipping_id.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping_id' when calling FixedRateShipping.delete_fixed_rate_shipping_by_id"
        end
        # resource path
        local_var_path = '/fixedRateShippings/{fixedRateShippingId}'.sub('{' + 'fixedRateShippingId' + '}', fixed_rate_shipping_id.to_s)

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
          api_client.config.logger.debug "API called: FixedRateShipping#delete_fixed_rate_shipping_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find FixedRateShipping
      # Return single instance of FixedRateShipping by its ID.
      # @param fixed_rate_shipping_id ID of fixedRateShipping to return
      # @param [Hash] opts the optional parameters
      # @return [FixedRateShipping]
      def get_fixed_rate_shipping_by_id(fixed_rate_shipping_id, opts = {})
        data, _status_code, _headers = get_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, opts)
        data
      end

      # Find FixedRateShipping
      # Return single instance of FixedRateShipping by its ID.
      # @param fixed_rate_shipping_id ID of fixedRateShipping to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(FixedRateShipping, Fixnum, Hash)>] FixedRateShipping data, response status code and response headers
      def get_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.get_fixed_rate_shipping_by_id ...'
        end
        # verify the required parameter 'fixed_rate_shipping_id' is set
        if api_client.config.client_side_validation && fixed_rate_shipping_id.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping_id' when calling FixedRateShipping.get_fixed_rate_shipping_by_id"
        end
        # resource path
        local_var_path = '/fixedRateShippings/{fixedRateShippingId}'.sub('{' + 'fixedRateShippingId' + '}', fixed_rate_shipping_id.to_s)

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
          :return_type => 'FixedRateShipping')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: FixedRateShipping#get_fixed_rate_shipping_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List FixedRateShippings
      # Return a list of FixedRateShippings
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<FixedRateShipping>]
      def list_all_fixed_rate_shippings(opts = {})
        data, _status_code, _headers = list_all_fixed_rate_shippings_with_http_info(opts)
        data
      end

      # List FixedRateShippings
      # Return a list of FixedRateShippings
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<FixedRateShipping>, Fixnum, Hash)>] Page<FixedRateShipping> data, response status code and response headers
      def list_all_fixed_rate_shippings_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.list_all_fixed_rate_shippings ...'
        end
        # resource path
        local_var_path = '/fixedRateShippings'

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
          :return_type => 'Page<FixedRateShipping>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: FixedRateShipping#list_all_fixed_rate_shippings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace FixedRateShipping
      # Replace all attributes of FixedRateShipping
      # @param fixed_rate_shipping_id ID of fixedRateShipping to replace
      # @param fixed_rate_shipping Attributes of fixedRateShipping to replace
      # @param [Hash] opts the optional parameters
      # @return [FixedRateShipping]
      def replace_fixed_rate_shipping_by_id(fixed_rate_shipping_id, fixed_rate_shipping, opts = {})
        data, _status_code, _headers = replace_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, fixed_rate_shipping, opts)
        data
      end

      # Replace FixedRateShipping
      # Replace all attributes of FixedRateShipping
      # @param fixed_rate_shipping_id ID of fixedRateShipping to replace
      # @param fixed_rate_shipping Attributes of fixedRateShipping to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(FixedRateShipping, Fixnum, Hash)>] FixedRateShipping data, response status code and response headers
      def replace_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, fixed_rate_shipping, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.replace_fixed_rate_shipping_by_id ...'
        end
        # verify the required parameter 'fixed_rate_shipping_id' is set
        if api_client.config.client_side_validation && fixed_rate_shipping_id.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping_id' when calling FixedRateShipping.replace_fixed_rate_shipping_by_id"
        end
        # verify the required parameter 'fixed_rate_shipping' is set
        if api_client.config.client_side_validation && fixed_rate_shipping.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping' when calling FixedRateShipping.replace_fixed_rate_shipping_by_id"
        end
        # resource path
        local_var_path = '/fixedRateShippings/{fixedRateShippingId}'.sub('{' + 'fixedRateShippingId' + '}', fixed_rate_shipping_id.to_s)

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
        post_body = api_client.object_to_http_body(fixed_rate_shipping)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'FixedRateShipping')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: FixedRateShipping#replace_fixed_rate_shipping_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update FixedRateShipping
      # Update attributes of FixedRateShipping
      # @param fixed_rate_shipping_id ID of fixedRateShipping to update.
      # @param fixed_rate_shipping Attributes of fixedRateShipping to update.
      # @param [Hash] opts the optional parameters
      # @return [FixedRateShipping]
      def update_fixed_rate_shipping_by_id(fixed_rate_shipping_id, fixed_rate_shipping, opts = {})
        data, _status_code, _headers = update_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, fixed_rate_shipping, opts)
        data
      end

      # Update FixedRateShipping
      # Update attributes of FixedRateShipping
      # @param fixed_rate_shipping_id ID of fixedRateShipping to update.
      # @param fixed_rate_shipping Attributes of fixedRateShipping to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(FixedRateShipping, Fixnum, Hash)>] FixedRateShipping data, response status code and response headers
      def update_fixed_rate_shipping_by_id_with_http_info(fixed_rate_shipping_id, fixed_rate_shipping, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: FixedRateShipping.update_fixed_rate_shipping_by_id ...'
        end
        # verify the required parameter 'fixed_rate_shipping_id' is set
        if api_client.config.client_side_validation && fixed_rate_shipping_id.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping_id' when calling FixedRateShipping.update_fixed_rate_shipping_by_id"
        end
        # verify the required parameter 'fixed_rate_shipping' is set
        if api_client.config.client_side_validation && fixed_rate_shipping.nil?
          fail ArgumentError, "Missing the required parameter 'fixed_rate_shipping' when calling FixedRateShipping.update_fixed_rate_shipping_by_id"
        end
        # resource path
        local_var_path = '/fixedRateShippings/{fixedRateShippingId}'.sub('{' + 'fixedRateShippingId' + '}', fixed_rate_shipping_id.to_s)

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
        post_body = api_client.object_to_http_body(fixed_rate_shipping)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'FixedRateShipping')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: FixedRateShipping#update_fixed_rate_shipping_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end
