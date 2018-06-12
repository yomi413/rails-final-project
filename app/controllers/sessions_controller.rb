require 'bcrypt'

class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(id: params[:id])
  end
end
