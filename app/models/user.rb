class User < ApplicationRecord
  has_many :cars

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true

  def first_name
    self.name[0]
  end
end
