class User < ApplicationRecord
  has_many :cars

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
end
