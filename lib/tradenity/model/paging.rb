module Tradenity

  class Page < Array
    def initialize(content=[], page=0, size=0)
      concat(content)
      @page_number = page
      @page_size = size
    end

    def is_empty?
      @page_size <= 0
    end
  end


  class PageRequest
    def initialize(page, size)
      @page_number = page
      @page_size = size
    end
  end

end