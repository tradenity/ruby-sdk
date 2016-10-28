require 'virtus'
require 'bcrypt'
require 'tradenity/model/base'

module Tradenity


  class Address < BaseEntity
    include Virtus.model

    def self.resource_name
      'addresses'
    end

    attribute :streetLine1, String
    attribute :streetLine2, String
    attribute :city, String
    attribute :state, String
    attribute :zipCode, String
    attribute :country, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash

    def to_hash(prefix=nil)
      data = attributes.select {|key, value| [:streetLine1, :streetLine2, :city, :state, :zipCode, :country].include?(key) }
      if prefix != nil
        prefixed_data = {}
        data.each do |key, value|
          prefixed_data["#{prefix}#{key}"] = value
        end
        prefixed_data
      else
        data
      end
    end

  end


  class Brand < BaseEntity
    include Virtus.model

    def self.resource_name
      'brands'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash


  end


  class Category < BaseEntity
    include Virtus.model

    def self.resource_name
      'categories'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :depth, Integer
    attribute :position, Integer
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash
  end


  class Currency < BaseEntity
    include Virtus.model

    def self.resource_name
      'currencies'
    end

    attribute :code, String
    attribute :title, String
    attribute :status, String
    attribute :exchangeRate, Float
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash

  end


  class Customer < BaseEntity
    include Virtus.model

    def self.resource_name
      'customers'
    end

    attribute :firstName, String
    attribute :lastName, String
    attribute :email, String
    attribute :username, String
    attribute :password, String
    attribute :status, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash

    def self.find_by_username(username)
      find_one(username: username)
    end

    def valid_password?(pass)
      BCrypt::Password.new(password) == pass
    end

    def get_create_data
      data = attributes.select {|key, value| [:firstName, :lastName, :email, :username, :password].include?(key) }
      data[:status] = 'active'
      data
    end

  end


  class Gateway < BaseEntity
    include Virtus.model

    def self.resource_name
      'gateways'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :mode, String
    attribute :accountId, String
    attribute :secretKey, String
    attribute :publicKey, String
    attribute :testSecretKey, String
    attribute :testPublicKey, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash

  end


  class Photo
    include Virtus.model

    attribute :name, String
    attribute :url, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
  end

  class Dimensions
    include Virtus.model

    attribute :unit, String
    attribute :width, Float
    attribute :height, Float
    attribute :depth, Float
  end

  class Weight
    include Virtus.model

    attribute :unit, String
    attribute :amount, Float
  end

  class Product < BaseEntity
    include Virtus.model

    def self.resource_name
      'products'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :sku, String
    attribute :description, String
    attribute :shortDescription, String
    attribute :fullDescription, String
    attribute :specifications, String
    attribute :stockLevel, Integer
    attribute :minimumStockLevel, Integer
    attribute :hasSellLimit, Boolean
    attribute :maximumSellCount, Integer
    attribute :stockStatus, String
    attribute :price, Float
    attribute :itemWeight, Weight
    attribute :packageWeight, Weight
    attribute :itemDimensions, Dimensions
    attribute :packageDimensions, Dimensions
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :mainPhoto, Photo
    attribute :photos, Array[Photo]
    attribute :_links, Hash
  end


  class Collection < BaseEntity
    include Virtus.model

    def self.resource_name
      'collections'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :products, Array[Product]
    attribute :_links, Hash
  end


  class LineItem < IdentifiableResource
    include Virtus.model

    attribute :quantity, Integer
    attribute :unitPrice, Float
    attribute :subtotal, Float
    attribute :total, Float
    attribute :taxes, Float
    attribute :shippingCost, Float
    attribute :product, Product
    attribute :_links, Hash

  end

  class ShippingMethod < BaseEntity
    include Virtus.model

    def self.resource_name
      'shippingMethods'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :costType, String
    attribute :fixedRate, Float
    attribute :costPerUnitWeight, Float
    attribute :weightUnit, String
    attribute :_links, Hash
  end

  class ShippingOption
    include Virtus.model

    attribute :shippingMethod, ShippingMethod
    attribute :cost, Float
    attribute :orderTotal, Float
  end

  class ShoppingCart < BaseEntity
    include Virtus.model

    def self.resource_name
      'shoppingCarts'
    end

    attribute :total, Float
    attribute :subtotal, Float
    attribute :count, Integer
    attribute :items, Array[LineItem]
    attribute :_links, Hash

    def self.get
      new(client.get(resource_base_path))
    end

    def self.add(item)
      new(client.post(resource_base_path, {product: item.product.id, quantity: item.quantity}))
    end

    def self.remove(item_id)
      new(client.delete("#{resource_base_path}/#{item_id}"))
    end
  end

  class Checkout
    include Virtus.model

    attribute :subtotal, Float
    attribute :total, Float
    attribute :taxes, Float
    attribute :items, Array[LineItem]
    attribute :shippingOptions, Array[ShippingOption]
    attribute :currency, Currency
    attribute :gateway, Gateway
  end

  class Order < BaseEntity
    include Virtus.model

    def self.resource_name
      'orders'
    end

    attribute :count, Integer
    attribute :total, Float
    attribute :subtotal, Float
    attribute :shippingCost, Float
    attribute :items, Array[LineItem]
    attribute :customer, Customer
    attribute :billingAddress, Address
    attribute :shippingAddress, Address
    attribute :status, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :purchasedAt, DateTime
    attribute :completedAt, DateTime
    attribute :_links, Hash

    def self.find_all_by_customer(customer_id)
      find_all(customer: customer_id)
    end

    def get_checkout_data
      data = {customer: customer.id}
      data.merge!(billingAddress.to_hash('billingAddress.'))
      data.merge!(shippingAddress.to_hash('shippingAddress.'))
      data
    end

    def checkout(payment_source)
      data = get_checkout_data
      data['paymentSource'] = payment_source
      result = self.class.client.post(self.class.resource_base_path, data)
      Transaction.new(result)
    end

    def self.refund(order_id)
      result = client.put("#{resource_base_path}/#{order_id}/refund", data={})
      Transaction.new(result)
    end

  end

  class Tax < BaseEntity
    include Virtus.model

    def self.resource_name
      'taxes'
    end

    attribute :name, String
    attribute :title, String
    attribute :status, String
    attribute :description, String
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash

  end


  class Transaction < BaseEntity
    include Virtus.model

    def self.resource_name
      'transactions'
    end

    attribute :type, String
    attribute :status, String
    attribute :gatewayOperationId, String
    attribute :order, Order
    attribute :gateway, Gateway
    attribute :createdAt, DateTime
    attribute :updatedAt, DateTime
    attribute :_links, Hash
  end
end