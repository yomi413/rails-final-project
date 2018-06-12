class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
  end

  def show
    @car = Car.find_by(id: params[:id])
  end

  private

  def car_params
    params.require(:car).permit(:id, :make, :model, :year, :color, :size)
  end
end
