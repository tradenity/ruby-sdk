module Tradenity

  class Page < Array

    attr_accessor :total_pages

    attr_accessor :total_elements

    attr_accessor :number

    attr_accessor :size

    attr_accessor :number_of_elements

    def initialize(content=[], total_pages, total_elements, number, size, number_of_elements)
      concat(content)
      @total_pages = total_pages
      @total_elements = total_elements
      @number = number
      @size = size
      @number_of_elements = number_of_elements
    end

    def is_empty?
      @size <= 0
    end

  end


  class PageRequest
    def initialize(page, size)
      @page_number = page
      @page_size = size
    end
  end

end