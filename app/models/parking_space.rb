class ParkingSpace < ApplicationRecord
  belongs_to :car
  validates :space_number, presence: true, uniqueness: true

end
