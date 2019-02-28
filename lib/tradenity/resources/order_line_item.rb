=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class OrderLineItem

  
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

    attr_accessor :unit_price

    attr_accessor :quantity

    attr_accessor :product

    attr_accessor :taxes

    attr_accessor :promotions

    attr_accessor :subtotal

    attr_accessor :total

    attr_accessor :shipping_amount

    attr_accessor :tax_amount

    attr_accessor :discount_amount

    attr_accessor :order

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      { 
        :'id' => :'id',
        :'__meta' => :'__meta',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'unit_price' => :'unitPrice',
        :'quantity' => :'quantity',
        :'product' => :'product',
        :'taxes' => :'taxes',
        :'promotions' => :'promotions',
        :'subtotal' => :'subtotal',
        :'total' => :'total',
        :'shipping_amount' => :'shippingAmount',
        :'tax_amount' => :'taxAmount',
        :'discount_amount' => :'discountAmount',
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
        :'unit_price' => :'Integer',
        :'quantity' => :'Integer',
        :'product' => :'Product',
        :'taxes' => :'Array<TaxRate>',
        :'promotions' => :'Array<Promotion>',
        :'subtotal' => :'Integer',
        :'total' => :'Integer',
        :'shipping_amount' => :'Integer',
        :'tax_amount' => :'Integer',
        :'discount_amount' => :'Integer',
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

      if attributes.has_key?(:'unitPrice')
        self.unit_price = attributes[:'unitPrice']
      end

      if attributes.has_key?(:'unit_price')
        self.unit_price = attributes[:'unit_price']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.has_key?(:'taxes')
        if (value = attributes[:'taxes']).is_a?(Array)
          self.taxes = value
        end
      end

      if attributes.has_key?(:'promotions')
        if (value = attributes[:'promotions']).is_a?(Array)
          self.promotions = value
        end
      end

      if attributes.has_key?(:'subtotal')
        self.subtotal = attributes[:'subtotal']
      end

      if attributes.has_key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.has_key?(:'shippingAmount')
        self.shipping_amount = attributes[:'shippingAmount']
      end

      if attributes.has_key?(:'shipping_amount')
        self.shipping_amount = attributes[:'shipping_amount']
      end

      if attributes.has_key?(:'taxAmount')
        self.tax_amount = attributes[:'taxAmount']
      end

      if attributes.has_key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.has_key?(:'discountAmount')
        self.discount_amount = attributes[:'discountAmount']
      end

      if attributes.has_key?(:'discount_amount')
        self.discount_amount = attributes[:'discount_amount']
      end

      if attributes.has_key?(:'order')
        self.order = attributes[:'order']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @unit_price.nil?
        invalid_properties.push('invalid value for "unit_price", unit_price cannot be nil.')
      end

      if @quantity.nil?
        invalid_properties.push('invalid value for "quantity", quantity cannot be nil.')
      end

      if @product.nil?
        invalid_properties.push('invalid value for "product", product cannot be nil.')
      end

      if @order.nil?
        invalid_properties.push('invalid value for "order", order cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @unit_price.nil?
      return false if @quantity.nil?
      return false if @product.nil?
      return false if @order.nil?
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
          unit_price == o.unit_price &&
          quantity == o.quantity &&
          product == o.product &&
          taxes == o.taxes &&
          promotions == o.promotions &&
          subtotal == o.subtotal &&
          total == o.total &&
          shipping_amount == o.shipping_amount &&
          tax_amount == o.tax_amount &&
          discount_amount == o.discount_amount &&
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
      [__meta, created_at, updated_at, unit_price, quantity, product, taxes, promotions, subtotal, total, shipping_amount, tax_amount, discount_amount, order].hash
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

    # Create OrderLineItem
    # Create a new OrderLineItem
    def create
      data = self.class.create_order_line_item(self)
      self.id = data.id
      data
    end

    # Update OrderLineItem
    # Update attributes of OrderLineItem
    # @return [OrderLineItem]
    def update
      self.class.update_order_line_item_by_id(self.id, self)
    end

    # Delete OrderLineItem
    # Delete this instance of OrderLineItem.
    # @return [nil]
    def delete
      self.class.delete_order_line_item_by_id(self.id)
    end

    class << self

      # List OrderLineItems
      # Return a list of OrderLineItems
      # @param [Hash] opts the optional parameters
      # @return [Page<OrderLineItem>]
      def find_all
        list_all_order_line_items
      end

      # Find List of OrderLineItem
      # Return multiple instances of OrderLineItem by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_order_line_items(opts)
      end

      # Find OrderLineItem by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [OrderLineItem]
      def find_one_by(opts = {})
        list_all_order_line_items(opts)[0]
      end

      # Find OrderLineItem
      # Return single instance of OrderLineItem by its ID.
      # @param id ID of OrderLineItem to return
      # @return [OrderLineItem]
      def find_by_id(id)
        get_order_line_item_by_id(id)
      end

      # Delete OrderLineItem
      # Delete an instance of OrderLineItem by its ID.
      # @param id ID of OrderLineItem to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_order_line_item_by_id(id)
      end

      # Create OrderLineItem
      # Create a new OrderLineItem
      # @param order_line_item Attributes of orderLineItem to create
      # @param [Hash] opts the optional parameters
      # @return [OrderLineItem]
      def create_order_line_item(order_line_item, opts = {})
        data, _status_code, _headers = create_order_line_item_with_http_info(order_line_item, opts)
        data
      end

      # Create OrderLineItem
      # Create a new OrderLineItem
      # @param order_line_item Attributes of orderLineItem to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(OrderLineItem, Fixnum, Hash)>] OrderLineItem data, response status code and response headers
      def create_order_line_item_with_http_info(order_line_item, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.create_order_line_item ...'
        end
        # verify the required parameter 'order_line_item' is set
        if api_client.config.client_side_validation && order_line_item.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item' when calling OrderLineItem.create_order_line_item"
        end
        # resource path
        local_var_path = '/orderLineItems'

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
        post_body = api_client.object_to_http_body(order_line_item)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OrderLineItem')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OrderLineItem#create_order_line_item\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete OrderLineItem
      # Delete an instance of OrderLineItem by its ID.
      # @param order_line_item_id ID of orderLineItem to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_order_line_item_by_id(order_line_item_id, opts = {})
        delete_order_line_item_by_id_with_http_info(order_line_item_id, opts)
        nil
      end

      # Delete OrderLineItem
      # Delete an instance of OrderLineItem by its ID.
      # @param order_line_item_id ID of orderLineItem to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_order_line_item_by_id_with_http_info(order_line_item_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.delete_order_line_item_by_id ...'
        end
        # verify the required parameter 'order_line_item_id' is set
        if api_client.config.client_side_validation && order_line_item_id.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item_id' when calling OrderLineItem.delete_order_line_item_by_id"
        end
        # resource path
        local_var_path = '/orderLineItems/{orderLineItemId}'.sub('{' + 'orderLineItemId' + '}', order_line_item_id.to_s)

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
          api_client.config.logger.debug "API called: OrderLineItem#delete_order_line_item_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find OrderLineItem
      # Return single instance of OrderLineItem by its ID.
      # @param order_line_item_id ID of orderLineItem to return
      # @param [Hash] opts the optional parameters
      # @return [OrderLineItem]
      def get_order_line_item_by_id(order_line_item_id, opts = {})
        data, _status_code, _headers = get_order_line_item_by_id_with_http_info(order_line_item_id, opts)
        data
      end

      # Find OrderLineItem
      # Return single instance of OrderLineItem by its ID.
      # @param order_line_item_id ID of orderLineItem to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(OrderLineItem, Fixnum, Hash)>] OrderLineItem data, response status code and response headers
      def get_order_line_item_by_id_with_http_info(order_line_item_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.get_order_line_item_by_id ...'
        end
        # verify the required parameter 'order_line_item_id' is set
        if api_client.config.client_side_validation && order_line_item_id.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item_id' when calling OrderLineItem.get_order_line_item_by_id"
        end
        # resource path
        local_var_path = '/orderLineItems/{orderLineItemId}'.sub('{' + 'orderLineItemId' + '}', order_line_item_id.to_s)

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
          :return_type => 'OrderLineItem')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OrderLineItem#get_order_line_item_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List OrderLineItems
      # Return a list of OrderLineItems
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<OrderLineItem>]
      def list_all_order_line_items(opts = {})
        data, _status_code, _headers = list_all_order_line_items_with_http_info(opts)
        data
      end

      # List OrderLineItems
      # Return a list of OrderLineItems
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<OrderLineItem>, Fixnum, Hash)>] Page<OrderLineItem> data, response status code and response headers
      def list_all_order_line_items_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.list_all_order_line_items ...'
        end
        # resource path
        local_var_path = '/orderLineItems'

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
          :return_type => 'Page<OrderLineItem>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OrderLineItem#list_all_order_line_items\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace OrderLineItem
      # Replace all attributes of OrderLineItem
      # @param order_line_item_id ID of orderLineItem to replace
      # @param order_line_item Attributes of orderLineItem to replace
      # @param [Hash] opts the optional parameters
      # @return [OrderLineItem]
      def replace_order_line_item_by_id(order_line_item_id, order_line_item, opts = {})
        data, _status_code, _headers = replace_order_line_item_by_id_with_http_info(order_line_item_id, order_line_item, opts)
        data
      end

      # Replace OrderLineItem
      # Replace all attributes of OrderLineItem
      # @param order_line_item_id ID of orderLineItem to replace
      # @param order_line_item Attributes of orderLineItem to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(OrderLineItem, Fixnum, Hash)>] OrderLineItem data, response status code and response headers
      def replace_order_line_item_by_id_with_http_info(order_line_item_id, order_line_item, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.replace_order_line_item_by_id ...'
        end
        # verify the required parameter 'order_line_item_id' is set
        if api_client.config.client_side_validation && order_line_item_id.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item_id' when calling OrderLineItem.replace_order_line_item_by_id"
        end
        # verify the required parameter 'order_line_item' is set
        if api_client.config.client_side_validation && order_line_item.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item' when calling OrderLineItem.replace_order_line_item_by_id"
        end
        # resource path
        local_var_path = '/orderLineItems/{orderLineItemId}'.sub('{' + 'orderLineItemId' + '}', order_line_item_id.to_s)

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
        post_body = api_client.object_to_http_body(order_line_item)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OrderLineItem')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OrderLineItem#replace_order_line_item_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update OrderLineItem
      # Update attributes of OrderLineItem
      # @param order_line_item_id ID of orderLineItem to update.
      # @param order_line_item Attributes of orderLineItem to update.
      # @param [Hash] opts the optional parameters
      # @return [OrderLineItem]
      def update_order_line_item_by_id(order_line_item_id, order_line_item, opts = {})
        data, _status_code, _headers = update_order_line_item_by_id_with_http_info(order_line_item_id, order_line_item, opts)
        data
      end

      # Update OrderLineItem
      # Update attributes of OrderLineItem
      # @param order_line_item_id ID of orderLineItem to update.
      # @param order_line_item Attributes of orderLineItem to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(OrderLineItem, Fixnum, Hash)>] OrderLineItem data, response status code and response headers
      def update_order_line_item_by_id_with_http_info(order_line_item_id, order_line_item, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: OrderLineItem.update_order_line_item_by_id ...'
        end
        # verify the required parameter 'order_line_item_id' is set
        if api_client.config.client_side_validation && order_line_item_id.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item_id' when calling OrderLineItem.update_order_line_item_by_id"
        end
        # verify the required parameter 'order_line_item' is set
        if api_client.config.client_side_validation && order_line_item.nil?
          fail ArgumentError, "Missing the required parameter 'order_line_item' when calling OrderLineItem.update_order_line_item_by_id"
        end
        # resource path
        local_var_path = '/orderLineItems/{orderLineItemId}'.sub('{' + 'orderLineItemId' + '}', order_line_item_id.to_s)

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
        post_body = api_client.object_to_http_body(order_line_item)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'OrderLineItem')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: OrderLineItem#update_order_line_item_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end