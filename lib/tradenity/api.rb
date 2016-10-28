
module Tradenity


  @api_key = ''
  @api_base = 'https://api.tradenity.com/v1'

  class << self
    attr_accessor :api_key, :api_base
  end

end
