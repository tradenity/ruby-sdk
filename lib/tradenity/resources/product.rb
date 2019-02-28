=begin
#Tradenity API

#Tradenity eCommerce Rest API

Contact: support@tradenity.com
Generated by: https://github.com/tradenity

=end

require 'uri'

module Tradenity
  class Product

  
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

    attr_accessor :model

    attr_accessor :status

    attr_accessor :type

    attr_accessor :short_description

    attr_accessor :full_description

    attr_accessor :free_shipping

    attr_accessor :sku

    attr_accessor :price

    attr_accessor :cost_price

    attr_accessor :retail_price

    attr_accessor :sale_price

    attr_accessor :manage_inventory

    attr_accessor :stock_level

    attr_accessor :minimum_stock_level

    attr_accessor :maximum_sell_count

    attr_accessor :item_dimensions

    attr_accessor :package_dimensions

    attr_accessor :package_weight

    attr_accessor :require_shipping

    attr_accessor :availability

    attr_accessor :availability_date

    attr_accessor :allow_pre_order

    attr_accessor :brand

    attr_accessor :main_photo

    attr_accessor :photos

    attr_accessor :files

    attr_accessor :promotions

    attr_accessor :related_products

    attr_accessor :stock_status

    attr_accessor :categories

    attr_accessor :tax_class

    attr_accessor :option_set

    attr_accessor :variants

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
        :'model' => :'model',
        :'status' => :'status',
        :'type' => :'type',
        :'short_description' => :'shortDescription',
        :'full_description' => :'fullDescription',
        :'free_shipping' => :'freeShipping',
        :'sku' => :'sku',
        :'price' => :'price',
        :'cost_price' => :'costPrice',
        :'retail_price' => :'retailPrice',
        :'sale_price' => :'salePrice',
        :'manage_inventory' => :'manageInventory',
        :'stock_level' => :'stockLevel',
        :'minimum_stock_level' => :'minimumStockLevel',
        :'maximum_sell_count' => :'maximumSellCount',
        :'item_dimensions' => :'itemDimensions',
        :'package_dimensions' => :'packageDimensions',
        :'package_weight' => :'packageWeight',
        :'require_shipping' => :'requireShipping',
        :'availability' => :'availability',
        :'availability_date' => :'availabilityDate',
        :'allow_pre_order' => :'allowPreOrder',
        :'brand' => :'brand',
        :'main_photo' => :'mainPhoto',
        :'photos' => :'photos',
        :'files' => :'files',
        :'promotions' => :'promotions',
        :'related_products' => :'relatedProducts',
        :'stock_status' => :'stockStatus',
        :'categories' => :'categories',
        :'tax_class' => :'taxClass',
        :'option_set' => :'optionSet',
        :'variants' => :'variants'
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
        :'model' => :'String',
        :'status' => :'String',
        :'type' => :'String',
        :'short_description' => :'String',
        :'full_description' => :'String',
        :'free_shipping' => :'BOOLEAN',
        :'sku' => :'String',
        :'price' => :'Integer',
        :'cost_price' => :'Integer',
        :'retail_price' => :'Integer',
        :'sale_price' => :'Integer',
        :'manage_inventory' => :'BOOLEAN',
        :'stock_level' => :'Integer',
        :'minimum_stock_level' => :'Integer',
        :'maximum_sell_count' => :'Integer',
        :'item_dimensions' => :'Dimensions',
        :'package_dimensions' => :'Dimensions',
        :'package_weight' => :'Weight',
        :'require_shipping' => :'BOOLEAN',
        :'availability' => :'String',
        :'availability_date' => :'Date',
        :'allow_pre_order' => :'BOOLEAN',
        :'brand' => :'Brand',
        :'main_photo' => :'Photo',
        :'photos' => :'Array<Photo>',
        :'files' => :'Array<StorageFile>',
        :'promotions' => :'Array<Promotion>',
        :'related_products' => :'Array<Product>',
        :'stock_status' => :'String',
        :'categories' => :'Array<Category>',
        :'tax_class' => :'TaxClass',
        :'option_set' => :'OptionSet',
        :'variants' => :'Array<Variant>'
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

      if attributes.has_key?(:'model')
        self.model = attributes[:'model']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'shortDescription')
        self.short_description = attributes[:'shortDescription']
      end

      if attributes.has_key?(:'short_description')
        self.short_description = attributes[:'short_description']
      end

      if attributes.has_key?(:'fullDescription')
        self.full_description = attributes[:'fullDescription']
      end

      if attributes.has_key?(:'full_description')
        self.full_description = attributes[:'full_description']
      end

      if attributes.has_key?(:'freeShipping')
        self.free_shipping = attributes[:'freeShipping']
      end

      if attributes.has_key?(:'free_shipping')
        self.free_shipping = attributes[:'free_shipping']
      end

      if attributes.has_key?(:'sku')
        self.sku = attributes[:'sku']
      end

      if attributes.has_key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.has_key?(:'costPrice')
        self.cost_price = attributes[:'costPrice']
      end

      if attributes.has_key?(:'cost_price')
        self.cost_price = attributes[:'cost_price']
      end

      if attributes.has_key?(:'retailPrice')
        self.retail_price = attributes[:'retailPrice']
      end

      if attributes.has_key?(:'retail_price')
        self.retail_price = attributes[:'retail_price']
      end

      if attributes.has_key?(:'salePrice')
        self.sale_price = attributes[:'salePrice']
      end

      if attributes.has_key?(:'sale_price')
        self.sale_price = attributes[:'sale_price']
      end

      if attributes.has_key?(:'manageInventory')
        self.manage_inventory = attributes[:'manageInventory']
      end

      if attributes.has_key?(:'manage_inventory')
        self.manage_inventory = attributes[:'manage_inventory']
      end

      if attributes.has_key?(:'stockLevel')
        self.stock_level = attributes[:'stockLevel']
      end

      if attributes.has_key?(:'stock_level')
        self.stock_level = attributes[:'stock_level']
      end

      if attributes.has_key?(:'minimumStockLevel')
        self.minimum_stock_level = attributes[:'minimumStockLevel']
      end

      if attributes.has_key?(:'minimum_stock_level')
        self.minimum_stock_level = attributes[:'minimum_stock_level']
      end

      if attributes.has_key?(:'maximumSellCount')
        self.maximum_sell_count = attributes[:'maximumSellCount']
      end

      if attributes.has_key?(:'maximum_sell_count')
        self.maximum_sell_count = attributes[:'maximum_sell_count']
      end

      if attributes.has_key?(:'itemDimensions')
        self.item_dimensions = attributes[:'itemDimensions']
      end

      if attributes.has_key?(:'item_dimensions')
        self.item_dimensions = attributes[:'item_dimensions']
      end

      if attributes.has_key?(:'packageDimensions')
        self.package_dimensions = attributes[:'packageDimensions']
      end

      if attributes.has_key?(:'package_dimensions')
        self.package_dimensions = attributes[:'package_dimensions']
      end

      if attributes.has_key?(:'packageWeight')
        self.package_weight = attributes[:'packageWeight']
      end

      if attributes.has_key?(:'package_weight')
        self.package_weight = attributes[:'package_weight']
      end

      if attributes.has_key?(:'requireShipping')
        self.require_shipping = attributes[:'requireShipping']
      end

      if attributes.has_key?(:'require_shipping')
        self.require_shipping = attributes[:'require_shipping']
      end

      if attributes.has_key?(:'availability')
        self.availability = attributes[:'availability']
      end

      if attributes.has_key?(:'availabilityDate')
        self.availability_date = attributes[:'availabilityDate']
      end

      if attributes.has_key?(:'availability_date')
        self.availability_date = attributes[:'availability_date']
      end

      if attributes.has_key?(:'allowPreOrder')
        self.allow_pre_order = attributes[:'allowPreOrder']
      end

      if attributes.has_key?(:'allow_pre_order')
        self.allow_pre_order = attributes[:'allow_pre_order']
      end

      if attributes.has_key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.has_key?(:'mainPhoto')
        self.main_photo = attributes[:'mainPhoto']
      end

      if attributes.has_key?(:'main_photo')
        self.main_photo = attributes[:'main_photo']
      end

      if attributes.has_key?(:'photos')
        if (value = attributes[:'photos']).is_a?(Array)
          self.photos = value
        end
      end

      if attributes.has_key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.has_key?(:'promotions')
        if (value = attributes[:'promotions']).is_a?(Array)
          self.promotions = value
        end
      end

      if attributes.has_key?(:'relatedProducts')
        if (value = attributes[:'relatedProducts']).is_a?(Array)
          self.related_products = value
        end
      end

      if attributes.has_key?(:'related_products')
        if (value = attributes[:'related_products']).is_a?(Array)
          self.related_products = value
        end
      end

      if attributes.has_key?(:'stockStatus')
        self.stock_status = attributes[:'stockStatus']
      end

      if attributes.has_key?(:'stock_status')
        self.stock_status = attributes[:'stock_status']
      end

      if attributes.has_key?(:'categories')
        if (value = attributes[:'categories']).is_a?(Array)
          self.categories = value
        end
      end

      if attributes.has_key?(:'taxClass')
        self.tax_class = attributes[:'taxClass']
      end

      if attributes.has_key?(:'tax_class')
        self.tax_class = attributes[:'tax_class']
      end

      if attributes.has_key?(:'optionSet')
        self.option_set = attributes[:'optionSet']
      end

      if attributes.has_key?(:'option_set')
        self.option_set = attributes[:'option_set']
      end

      if attributes.has_key?(:'variants')
        if (value = attributes[:'variants']).is_a?(Array)
          self.variants = value
        end
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

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @sku.nil?
        invalid_properties.push('invalid value for "sku", sku cannot be nil.')
      end

      if @price.nil?
        invalid_properties.push('invalid value for "price", price cannot be nil.')
      end

      if @categories.nil?
        invalid_properties.push('invalid value for "categories", categories cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @slug.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ['enabled', 'disabled'])
      return false unless status_validator.valid?(@status)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ['digital', 'physical'])
      return false unless type_validator.valid?(@type)
      return false if @sku.nil?
      return false if @price.nil?
      availability_validator = EnumAttributeValidator.new('String', ['available', 'comingSoon', 'retired'])
      return false unless availability_validator.valid?(@availability)
      stock_status_validator = EnumAttributeValidator.new('String', ['available', 'alert', 'unavailable'])
      return false unless stock_status_validator.valid?(@stock_status)
      return false if @categories.nil?
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
      validator = EnumAttributeValidator.new('String', ['digital', 'physical'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] availability Object to be assigned
    def availability=(availability)
      validator = EnumAttributeValidator.new('String', ['available', 'comingSoon', 'retired'])
      unless validator.valid?(availability)
        fail ArgumentError, 'invalid value for "availability", must be one of #{validator.allowable_values}.'
      end
      @availability = availability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] stock_status Object to be assigned
    def stock_status=(stock_status)
      validator = EnumAttributeValidator.new('String', ['available', 'alert', 'unavailable'])
      unless validator.valid?(stock_status)
        fail ArgumentError, 'invalid value for "stock_status", must be one of #{validator.allowable_values}.'
      end
      @stock_status = stock_status
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
          model == o.model &&
          status == o.status &&
          type == o.type &&
          short_description == o.short_description &&
          full_description == o.full_description &&
          free_shipping == o.free_shipping &&
          sku == o.sku &&
          price == o.price &&
          cost_price == o.cost_price &&
          retail_price == o.retail_price &&
          sale_price == o.sale_price &&
          manage_inventory == o.manage_inventory &&
          stock_level == o.stock_level &&
          minimum_stock_level == o.minimum_stock_level &&
          maximum_sell_count == o.maximum_sell_count &&
          item_dimensions == o.item_dimensions &&
          package_dimensions == o.package_dimensions &&
          package_weight == o.package_weight &&
          require_shipping == o.require_shipping &&
          availability == o.availability &&
          availability_date == o.availability_date &&
          allow_pre_order == o.allow_pre_order &&
          brand == o.brand &&
          main_photo == o.main_photo &&
          photos == o.photos &&
          files == o.files &&
          promotions == o.promotions &&
          related_products == o.related_products &&
          stock_status == o.stock_status &&
          categories == o.categories &&
          tax_class == o.tax_class &&
          option_set == o.option_set &&
          variants == o.variants
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [__meta, created_at, updated_at, name, slug, model, status, type, short_description, full_description, free_shipping, sku, price, cost_price, retail_price, sale_price, manage_inventory, stock_level, minimum_stock_level, maximum_sell_count, item_dimensions, package_dimensions, package_weight, require_shipping, availability, availability_date, allow_pre_order, brand, main_photo, photos, files, promotions, related_products, stock_status, categories, tax_class, option_set, variants].hash
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

    # Create Product
    # Create a new Product
    def create
      data = self.class.create_product(self)
      self.id = data.id
      data
    end

    # Update Product
    # Update attributes of Product
    # @return [Product]
    def update
      self.class.update_product_by_id(self.id, self)
    end

    # Delete Product
    # Delete this instance of Product.
    # @return [nil]
    def delete
      self.class.delete_product_by_id(self.id)
    end

    class << self

      # List Products
      # Return a list of Products
      # @param [Hash] opts the optional parameters
      # @return [Page<Product>]
      def find_all
        list_all_products
      end

      # Find List of Product
      # Return multiple instances of Product by its attributes.
      # @param [Hash] opts the search parameters
      # @return [Page<Collection>]
      def find_all_by(opts = {})
        list_all_products(opts)
      end

      # Find Product by its parameters
      # Return single instance of Collection by its attributes.
      # @param [Hash] opts search parameters
      # @return [Product]
      def find_one_by(opts = {})
        list_all_products(opts)[0]
      end

      # Find Product
      # Return single instance of Product by its ID.
      # @param id ID of Product to return
      # @return [Product]
      def find_by_id(id)
        get_product_by_id(id)
      end

      # Delete Product
      # Delete an instance of Product by its ID.
      # @param id ID of Product to delete.
      # @return [nil]
      def delete_by_id(id)
        delete_product_by_id(id)
      end

      # Create Product
      # Create a new Product
      # @param product Attributes of product to create
      # @param [Hash] opts the optional parameters
      # @return [Product]
      def create_product(product, opts = {})
        data, _status_code, _headers = create_product_with_http_info(product, opts)
        data
      end

      # Create Product
      # Create a new Product
      # @param product Attributes of product to create
      # @param [Hash] opts the optional parameters
      # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
      def create_product_with_http_info(product, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.create_product ...'
        end
        # verify the required parameter 'product' is set
        if api_client.config.client_side_validation && product.nil?
          fail ArgumentError, "Missing the required parameter 'product' when calling Product.create_product"
        end
        # resource path
        local_var_path = '/products'

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
        post_body = api_client.object_to_http_body(product)
        auth_names = []
        data, status_code, headers = api_client.call_api(:POST, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Product')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Product#create_product\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Delete Product
      # Delete an instance of Product by its ID.
      # @param product_id ID of product to delete.
      # @param [Hash] opts the optional parameters
      # @return [nil]
      def delete_product_by_id(product_id, opts = {})
        delete_product_by_id_with_http_info(product_id, opts)
        nil
      end

      # Delete Product
      # Delete an instance of Product by its ID.
      # @param product_id ID of product to delete.
      # @param [Hash] opts the optional parameters
      # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
      def delete_product_by_id_with_http_info(product_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.delete_product_by_id ...'
        end
        # verify the required parameter 'product_id' is set
        if api_client.config.client_side_validation && product_id.nil?
          fail ArgumentError, "Missing the required parameter 'product_id' when calling Product.delete_product_by_id"
        end
        # resource path
        local_var_path = '/products/{productId}'.sub('{' + 'productId' + '}', product_id.to_s)

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
          api_client.config.logger.debug "API called: Product#delete_product_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Find Product
      # Return single instance of Product by its ID.
      # @param product_id ID of product to return
      # @param [Hash] opts the optional parameters
      # @return [Product]
      def get_product_by_id(product_id, opts = {})
        data, _status_code, _headers = get_product_by_id_with_http_info(product_id, opts)
        data
      end

      # Find Product
      # Return single instance of Product by its ID.
      # @param product_id ID of product to return
      # @param [Hash] opts the optional parameters
      # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
      def get_product_by_id_with_http_info(product_id, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.get_product_by_id ...'
        end
        # verify the required parameter 'product_id' is set
        if api_client.config.client_side_validation && product_id.nil?
          fail ArgumentError, "Missing the required parameter 'product_id' when calling Product.get_product_by_id"
        end
        # resource path
        local_var_path = '/products/{productId}'.sub('{' + 'productId' + '}', product_id.to_s)

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
          :return_type => 'Product')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Product#get_product_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # List Products
      # Return a list of Products
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Page<Product>]
      def list_all_products(opts = {})
        data, _status_code, _headers = list_all_products_with_http_info(opts)
        data
      end

      # List Products
      # Return a list of Products
      # @param [Hash] opts the optional parameters
      # @option opts [Integer] :page page number
      # @option opts [Integer] :size page size
      # @option opts [String] :sort page order
      # @return [Array<(Page<Product>, Fixnum, Hash)>] Page<Product> data, response status code and response headers
      def list_all_products_with_http_info(opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.list_all_products ...'
        end
        # resource path
        local_var_path = '/products'

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
          :return_type => 'Page<Product>')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Product#list_all_products\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Replace Product
      # Replace all attributes of Product
      # @param product_id ID of product to replace
      # @param product Attributes of product to replace
      # @param [Hash] opts the optional parameters
      # @return [Product]
      def replace_product_by_id(product_id, product, opts = {})
        data, _status_code, _headers = replace_product_by_id_with_http_info(product_id, product, opts)
        data
      end

      # Replace Product
      # Replace all attributes of Product
      # @param product_id ID of product to replace
      # @param product Attributes of product to replace
      # @param [Hash] opts the optional parameters
      # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
      def replace_product_by_id_with_http_info(product_id, product, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.replace_product_by_id ...'
        end
        # verify the required parameter 'product_id' is set
        if api_client.config.client_side_validation && product_id.nil?
          fail ArgumentError, "Missing the required parameter 'product_id' when calling Product.replace_product_by_id"
        end
        # verify the required parameter 'product' is set
        if api_client.config.client_side_validation && product.nil?
          fail ArgumentError, "Missing the required parameter 'product' when calling Product.replace_product_by_id"
        end
        # resource path
        local_var_path = '/products/{productId}'.sub('{' + 'productId' + '}', product_id.to_s)

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
        post_body = api_client.object_to_http_body(product)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PUT, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Product')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Product#replace_product_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
      # Update Product
      # Update attributes of Product
      # @param product_id ID of product to update.
      # @param product Attributes of product to update.
      # @param [Hash] opts the optional parameters
      # @return [Product]
      def update_product_by_id(product_id, product, opts = {})
        data, _status_code, _headers = update_product_by_id_with_http_info(product_id, product, opts)
        data
      end

      # Update Product
      # Update attributes of Product
      # @param product_id ID of product to update.
      # @param product Attributes of product to update.
      # @param [Hash] opts the optional parameters
      # @return [Array<(Product, Fixnum, Hash)>] Product data, response status code and response headers
      def update_product_by_id_with_http_info(product_id, product, opts = {})
        if api_client.config.debugging
          api_client.config.logger.debug 'Calling API: Product.update_product_by_id ...'
        end
        # verify the required parameter 'product_id' is set
        if api_client.config.client_side_validation && product_id.nil?
          fail ArgumentError, "Missing the required parameter 'product_id' when calling Product.update_product_by_id"
        end
        # verify the required parameter 'product' is set
        if api_client.config.client_side_validation && product.nil?
          fail ArgumentError, "Missing the required parameter 'product' when calling Product.update_product_by_id"
        end
        # resource path
        local_var_path = '/products/{productId}'.sub('{' + 'productId' + '}', product_id.to_s)

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
        post_body = api_client.object_to_http_body(product)
        auth_names = []
        data, status_code, headers = api_client.call_api(:PATCH, local_var_path,
          :header_params => header_params,
          :query_params => query_params,
          :form_params => form_params,
          :body => post_body,
          :auth_names => auth_names,
          :return_type => 'Product')
        if api_client.config.debugging
          api_client.config.logger.debug "API called: Product#update_product_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
        end
        return data, status_code, headers
      end
    end
  end
end