module Tradenity
  module RailsSupport
    def adjust_tradenity_session
      HttpClient.get_instance.current_session(session)
    end
  end

  class Railtie < ::Rails::Railtie
    initializer 'tradenity.configure_controllers' do |app|

      ActiveSupport.on_load :action_controller do

        include Tradenity
        include Tradenity::RailsSupport

        before_filter :adjust_tradenity_session

      end
    end
  end
end