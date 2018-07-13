class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save && !@user.email.empty? && !@user.password.empty?
      session[:user_id] = @user.id
      redirect_to cars_path
    else
      flash.now[:error] = "Please fill in the blanks. All information is required."
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :uid, :admin)
  end
end
