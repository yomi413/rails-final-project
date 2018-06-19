class User < ApplicationRecord
  has_many :cars
  has_many :parking_spaces, through: :cars

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true

  def first_name
    self.name.split[0]
  end

  # def self.find_or_create_from_auth_hash(auth)
  #   where(uid: auth.uid).first_or_initialize.tap do |user|
  #     user.uid = auth.uid
  #     user.name = auth.info.name
  #     user.email = auth.info.email
  #     user.image = auth.info.image
  #     user.save
  #   end
  # end
end
