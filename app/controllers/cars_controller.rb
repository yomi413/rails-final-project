require 'pry'

class CarsController < ApplicationController
  
  def index
    # if params[:user_id]
    #   @cars = User.find(params[:user_id]).cars
    # else
    #   @cars = Car.all
    # end
    @cars = Car.recently_created
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
    @car = Car.find(params[:id])
    # @car = Car.find_by(id: params[:id])
  end

  def edit
    @car = Car.find_by(id: params[:id])
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.update(car_params)
    redirect_to cars_path
  end

  def destroy
    @car = current_user.cars.find_by(id: params[:id])

    if @car && logged_in?
      @car.destroy
      redirect_to cars_path
    end
  end

  private

  def car_params
    params.permit(:make, :model, :year, :color, :size, parking_space_attributes: [:space_number])
  end
end
