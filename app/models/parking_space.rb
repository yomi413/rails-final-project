class ParkingSpace < ApplicationRecord
  belongs_to :car
  # belongs_to :user

  validates :space_number, presence: true
end
