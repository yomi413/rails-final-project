class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def create
    @car = current_user.cars.build(car_params)

    if @car.save
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def show
    @car = Car.find_by(id: params[:id])
  end

  private

  def car_params
    params.permit(:make, :model, :year, :color, :size)
  end
end
