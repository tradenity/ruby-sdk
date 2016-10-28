require 'virtus'

module Tradenity

  UNAUTHORIZED_ERROR_CODE = 1001
  ACCESS_DENIED_ERROR_CODE = 1002

  METHOD_NOT_SUPPORTED_ERROR_CODE = 1102

  NOT_FOUND_ERROR_CODE = 1201
  DATA_VALIDATION_ERROR_CODE = 1203

  INVALID_PAYMENT_ERROR_CODE = 1401
  REFUND_ERROR_ERROR_CODE = 1402
  GATEWAY_ERROR_ERROR_CODE = 1403

  EXISTING_EMAIL_ERROR_CODE = 1601
  EXISTING_USERNAME_ERROR_CODE = 1602

  CART_INVALID_ITEM_ERROR_CODE = 1701

  INVENTORY_INVALID_PRODUCT_ERROR_CODE = 1801
  INVENTORY_NOT_AVAILABLE_PRODUCT_ERROR_CODE = 1802

  class ErrorMessage

    include Virtus.model

    attribute :status, Integer
    attribute :errorCode, Integer
    attribute :error, String
    attribute :timestamp, String
    attribute :message, String
    attribute :details, Hash
    attribute :fieldErrors, Hash
  end

end