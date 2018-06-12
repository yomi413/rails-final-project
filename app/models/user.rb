class User < ApplicationRecord
  has_many :cars

  has_secure_password
end
