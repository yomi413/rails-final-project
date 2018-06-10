class Car < ApplicationRecord
  belongs_to :user
  has_one :parking_space
end
