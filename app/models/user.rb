class User < ActiveRecord::Base
  alias_attribute :password_digest, :encrypted_password
  has_secure_password
end
