class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save 
      session[:user_id] = @user.id
      redirect_to cars_path
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
    # @user = User.find_by(id: params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :uid)
  end
end
