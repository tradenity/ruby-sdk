module Tradenity

  class ClientErrorException < RuntimeError

  end

  class ServerErrorException < RuntimeError

  end

  class RequestErrorException < RuntimeError
    def initialize(error)
      super(error.message)
      @error = error
    end
  end

  class AuthenticationException < RequestErrorException
  end


  class AuthorizationException < RequestErrorException
  end


  class EntityNotFoundException < RequestErrorException
  end


  class DataValidationException < RequestErrorException
  end


  class PaymentErrorException < RequestErrorException
  end


  class CustomerCreationException < RequestErrorException
  end


  class ShoppingCartException < RequestErrorException
  end


  class InventoryErrorException < RequestErrorException
  end
end