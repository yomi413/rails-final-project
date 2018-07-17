class User < ApplicationRecord
  has_many :cars
  has_many :parking_spaces, through: :cars

  has_many :addresses

  accepts_nested_attributes_for :addresses

  has_secure_password(validations: false)

  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def first_name
    self.name.split[0]
  end

end
