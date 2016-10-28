require 'tradenity/http/client'

module Tradenity

  class IdentifiableResource

    def id=(id)
      @id = id
    end

    def id
      if instance_variable_defined?('@id') && @id != nil
        @id
      elsif _links && _links.has_key?('self') && _links['self'].has_key?('href')
        href = _links['self']['href']
        @id = href.split('/')[-1]
        @id
      else
        ''
      end
    end

  end

  class BaseEntity < IdentifiableResource

    def self.client
      HttpClient.get_instance
    end

    def self.resource_name
      ''
    end

    def self.resource_base_path
      "#{Tradenity.api_base}/#{resource_name}"
    end

    def self.resource_path(resource_id)
      "#{resource_base_path}/#{resource_id}"
    end


    def self.find_all(q={})
      search(q)
    end

    def self.find_one(q={})
      search(q).first
    end

    def self.find_by_id(id)
      result = client.get(resource_path(id), {})
      new(result)
    end



    def get_create_data
      attributes
    end

    def get_update_data
      attributes
    end

    def create
      result = self.class.client.post(self.class.resource_base_path, get_create_data)
      self.class.new(result)
    end

    def update
      result = self.class.client.put(self.class.resource_path(id), get_update_data)
      self.class.new(result)
    end

    def delete
      self.class.client.delete(self.class.resource_path(id), {})
    end

    protected
    def self.search(q={})
      result = client.get(resource_base_path, q)
      if result.has_key? '_embedded' # && result['_embedded'].has_key?(resource_name)
        collection = result['_embedded'][resource_name]
        page_info = result['page']
        puts page_info

        cats = collection.collect do |c|
          new(c)
        end

        Page.new(cats, page_info['number'], page_info['size'])
      else
        Page.new([], 0, 0)
      end
    end

  end
end