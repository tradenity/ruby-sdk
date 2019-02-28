require 'bcrypt'

module Tradenity
  def valid_password?(password, test_password)
    BCrypt::Password.new(password) == test_password
  end
end