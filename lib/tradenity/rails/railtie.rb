module Tradenity
  module RailsSupport
    def adjust_session
      Configuration.default.session_token_holder.session = session
    end
  end

  class Railtie < ::Rails::Railtie
    initializer 'tradenity.configure_controllers' do |app|

      ActiveSupport.on_load :action_controller do

        include Tradenity
        include Tradenity::RailsSupport

        before_filter :adjust_session

      end
    end
  end
end