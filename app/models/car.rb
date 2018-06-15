class Car < ApplicationRecord
  belongs_to :user
  has_one :parking_space

  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :size, presence: true

  accepts_nested_attributes_for :parking_space

  def your_car
    self.make + " " + self.model + " " + "(" + self.year.to_s + ")"
  end
end
