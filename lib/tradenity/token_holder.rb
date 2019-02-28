module Tradenity
  class SessionTokenHolder

    attr_accessor :session

    def has_token?
      @session.has_key? :session_token
    end

    def set_token(token)
      @session[:session_token] = token
    end

    def get_token
      @session[:session_token]
    end

    def reset
      @session.delete :session_token
    end
  end
end