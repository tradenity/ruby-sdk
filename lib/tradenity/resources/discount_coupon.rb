=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class DiscountCoupon

  
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

    attr_accessor :description

    attr_accessor :status

    attr_accessor :minimum_order

    attr_accessor :code

    attr_accessor :begins_at

    attr_accessor :ends_at

    attr_accessor :include

    attr_accessor :type

    attr_accessor :amount

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
        :'description' => :'description',
        :'status' => :'status',
        :'minimum_order' => :'minimumOrder',
        :'code' => :'code',
        :'begins_at' => :'beginsAt',
        :'ends_at' => :'endsAt',
        :'include' => :'include',
        :'type' => :'type',
        :'amount' => :'amount'
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
        :'description' => :'String',
        :'status' => :'String',
        :'minimum_order' => :'Integer',
        :'code' => :'String',
        :'begins_at' => :'DateTime',
        :'ends_at' => :'DateTime',
        :'include' => :'ItemsSelector',
        :'type' => :'String',
        :'amount' => :'Integer'
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

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'minimumOrder')
        self.minimum_order = attributes[:'minimumOrder']
      end

      if attributes.has_key?(:'minimum_order')
        self.minimum_order = attributes[:'minimum_order']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'beginsAt')
        self.begins_at = attributes[:'beginsAt']
      end

      if attributes.has_key?(:'begins_at')
        self.begins_at = attributes[:'begins_at']
      end

      if attributes.has_key?(:'endsAt')
        self.ends_at = attributes[:'endsAt']
      end

      if attributes.has_key?(:'ends_at')
        self.ends_at = attributes[:'ends_at']
      end

      if attributes.has_key?(:'include')
        self.include = attributes[:'include']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['enabled', 'disabled'])
      return false unless status_validator.valid?(@status)
      return false if @code.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['percentage', 'fixedRate'])
      return false unless type_validator.valid?(@type)
      return false if @amount.nil?
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
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['percentage', 'fixedRate'])
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
          name == o.name &&
          description == o.description &&
          status == o.status &&
          minimum_order == o.minimum_order &&
          code == o.code &&
          begins_at == o.begins_at &&
          ends_at == o.ends_at &&
          include == o.include &&
          type == o.type &&
          amount == o.amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, name, description, status, minimum_order, code, begins_at, ends_at, include, type, amount].hash
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

    # Create DiscountCoupon
    # Create a new DiscountCoupon
    def create
      data = self.class.create_discount_coupon(self)
      self.id = data.id
      data
    end

    # Update DiscountCoupon
    # Update attributes of DiscountCoupon
    # @return [DiscountCoupon]
    def update
      self.class.update_discount_coupon_by_id(self.id, self)
    end

    # Delete DiscountCoupon
    # Delete this instance of DiscountCoupon.
    # @return [nil]
    def delete
      self.class.delete_discount_coupon_by_id(self.id)
    end

    class << self

      # List DiscountCoupons
      # Return a list of DiscountCoupons
      # @param [Hash] opts the optional parameters
      # @return [Page<DiscountCoupon>]
      def find_all
        list_all_discount_coupons
      end

      # Find List of DiscountCoupon
      # Return multiple instances of DiscountCoupon by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_discount_coupons(opts)
      end

      # Find DiscountCoupon by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [DiscountCoupon]
      def find_one_by(opts = {})
        list_all_discount_coupons(opts)[0]
      end

      # Find DiscountCoupon
      # Return single instance of DiscountCoupon by its ID.
      # @param id ID of DiscountCoupon to return
      # @return [DiscountCoupon]
      def find_by_id(id)
        get_discount_coupon_by_id(id)
      end

      # Delete DiscountCoupon
      # Delete an instance of DiscountCoupon by its ID.
      # @param id ID of DiscountCoupon to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_discount_coupon_by_id(id)
      end

      # Create DiscountCoupon
      # Create a new DiscountCoupon
      # @param discount_coupon Attributes of discountCoupon to create
      # @param [Hash] opts the optional parameters
      # @return [DiscountCoupon]
      def create_discount_coupon(discount_coupon, opts = {})
        data, _status_code, _headers = create_discount_coupon_with_http_info(discount_coupon, opts)
        data
      end

      # Create DiscountCoupon
      # Create a new DiscountCoupon
      # @param discount_coupon Attributes of discountCoupon to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(DiscountCoupon, Fixnum, Hash)>] DiscountCoupon data, response status code and response headers
      def create_discount_coupon_with_http_info(discount_coupon, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.create_discount_coupon ...'
        end
        # verify the required parameter 'discount_coupon' is set
        if api_client.config.client_side_validation && discount_coupon.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon' when calling DiscountCoupon.create_discount_coupon"
        end
        # resource path
        local_var_path = '/discountCoupons'

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
        post_body = api_client.object_to_http_body(discount_coupon)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'DiscountCoupon')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: DiscountCoupon#create_discount_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete DiscountCoupon
      # Delete an instance of DiscountCoupon by its ID.
      # @param discount_coupon_id ID of discountCoupon to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_discount_coupon_by_id(discount_coupon_id, opts = {})
        delete_discount_coupon_by_id_with_http_info(discount_coupon_id, opts)
        nil
      end

      # Delete DiscountCoupon
      # Delete an instance of DiscountCoupon by its ID.
      # @param discount_coupon_id ID of discountCoupon to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_discount_coupon_by_id_with_http_info(discount_coupon_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.delete_discount_coupon_by_id ...'
        end
        # verify the required parameter 'discount_coupon_id' is set
        if api_client.config.client_side_validation && discount_coupon_id.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon_id' when calling DiscountCoupon.delete_discount_coupon_by_id"
        end
        # resource path
        local_var_path = '/discountCoupons/{discountCouponId}'.sub('{' + 'discountCouponId' + '}', discount_coupon_id.to_s)

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
          api_client.config.logger.debug "API called: DiscountCoupon#delete_discount_coupon_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find DiscountCoupon
      # Return single instance of DiscountCoupon by its ID.
      # @param discount_coupon_id ID of discountCoupon to return
      # @param [Hash] opts the optional parameters
      # @return [DiscountCoupon]
      def get_discount_coupon_by_id(discount_coupon_id, opts = {})
        data, _status_code, _headers = get_discount_coupon_by_id_with_http_info(discount_coupon_id, opts)
        data
      end

      # Find DiscountCoupon
      # Return single instance of DiscountCoupon by its ID.
      # @param discount_coupon_id ID of discountCoupon to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(DiscountCoupon, Fixnum, Hash)>] DiscountCoupon data, response status code and response headers
      def get_discount_coupon_by_id_with_http_info(discount_coupon_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.get_discount_coupon_by_id ...'
        end
        # verify the required parameter 'discount_coupon_id' is set
        if api_client.config.client_side_validation && discount_coupon_id.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon_id' when calling DiscountCoupon.get_discount_coupon_by_id"
        end
        # resource path
        local_var_path = '/discountCoupons/{discountCouponId}'.sub('{' + 'discountCouponId' + '}', discount_coupon_id.to_s)

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
          :return_type => 'DiscountCoupon')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: DiscountCoupon#get_discount_coupon_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List DiscountCoupons
      # Return a list of DiscountCoupons
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<DiscountCoupon>]
      def list_all_discount_coupons(opts = {})
        data, _status_code, _headers = list_all_discount_coupons_with_http_info(opts)
        data
      end

      # List DiscountCoupons
      # Return a list of DiscountCoupons
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<DiscountCoupon>, Fixnum, Hash)>] Page<DiscountCoupon> data, response status code and response headers
      def list_all_discount_coupons_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.list_all_discount_coupons ...'
        end
        # resource path
        local_var_path = '/discountCoupons'

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
          :return_type => 'Page<DiscountCoupon>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: DiscountCoupon#list_all_discount_coupons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace DiscountCoupon
      # Replace all attributes of DiscountCoupon
      # @param discount_coupon_id ID of discountCoupon to replace
      # @param discount_coupon Attributes of discountCoupon to replace
      # @param [Hash] opts the optional parameters
      # @return [DiscountCoupon]
      def replace_discount_coupon_by_id(discount_coupon_id, discount_coupon, opts = {})
        data, _status_code, _headers = replace_discount_coupon_by_id_with_http_info(discount_coupon_id, discount_coupon, opts)
        data
      end

      # Replace DiscountCoupon
      # Replace all attributes of DiscountCoupon
      # @param discount_coupon_id ID of discountCoupon to replace
      # @param discount_coupon Attributes of discountCoupon to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(DiscountCoupon, Fixnum, Hash)>] DiscountCoupon data, response status code and response headers
      def replace_discount_coupon_by_id_with_http_info(discount_coupon_id, discount_coupon, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.replace_discount_coupon_by_id ...'
        end
        # verify the required parameter 'discount_coupon_id' is set
        if api_client.config.client_side_validation && discount_coupon_id.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon_id' when calling DiscountCoupon.replace_discount_coupon_by_id"
        end
        # verify the required parameter 'discount_coupon' is set
        if api_client.config.client_side_validation && discount_coupon.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon' when calling DiscountCoupon.replace_discount_coupon_by_id"
        end
        # resource path
        local_var_path = '/discountCoupons/{discountCouponId}'.sub('{' + 'discountCouponId' + '}', discount_coupon_id.to_s)

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
        post_body = api_client.object_to_http_body(discount_coupon)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'DiscountCoupon')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: DiscountCoupon#replace_discount_coupon_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update DiscountCoupon
      # Update attributes of DiscountCoupon
      # @param discount_coupon_id ID of discountCoupon to update.
      # @param discount_coupon Attributes of discountCoupon to update.
      # @param [Hash] opts the optional parameters
      # @return [DiscountCoupon]
      def update_discount_coupon_by_id(discount_coupon_id, discount_coupon, opts = {})
        data, _status_code, _headers = update_discount_coupon_by_id_with_http_info(discount_coupon_id, discount_coupon, opts)
        data
      end

      # Update DiscountCoupon
      # Update attributes of DiscountCoupon
      # @param discount_coupon_id ID of discountCoupon to update.
      # @param discount_coupon Attributes of discountCoupon to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(DiscountCoupon, Fixnum, Hash)>] DiscountCoupon data, response status code and response headers
      def update_discount_coupon_by_id_with_http_info(discount_coupon_id, discount_coupon, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: DiscountCoupon.update_discount_coupon_by_id ...'
        end
        # verify the required parameter 'discount_coupon_id' is set
        if api_client.config.client_side_validation && discount_coupon_id.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon_id' when calling DiscountCoupon.update_discount_coupon_by_id"
        end
        # verify the required parameter 'discount_coupon' is set
        if api_client.config.client_side_validation && discount_coupon.nil?
          fail ArgumentError, "Missing the required parameter 'discount_coupon' when calling DiscountCoupon.update_discount_coupon_by_id"
        end
        # resource path
        local_var_path = '/discountCoupons/{discountCouponId}'.sub('{' + 'discountCouponId' + '}', discount_coupon_id.to_s)

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
        post_body = api_client.object_to_http_body(discount_coupon)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'DiscountCoupon')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: DiscountCoupon#update_discount_coupon_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end