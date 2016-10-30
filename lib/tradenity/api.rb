
module Tradenity


  @api_key = ''
  @api_base = 'https://api.tradenity.com/v1'

  class << self
    attr_accessor :api_key, :api_base

    def reset_current_session
      puts 'Resetting in Tradenity self...'
      Tradenity::HttpClient.get_instance.reset_current_session
    end
  end

end
