class ParkingSpacesController < ApplicationController
  def create
    @parking_space = ParkingSpace.create(parking_space_params)
    @user = User.find_by(id: params[:id])
    redirect_to user_path(@user)
  end

  private

  def parking_space_params
    params.require(:parking_space).permit(:space_number, :car_id)
  end
end
