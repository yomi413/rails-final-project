class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
  end

  private

  def car_params
    params.require(:car).permit(:make, :model, :year, :color, :size)
  end
end
