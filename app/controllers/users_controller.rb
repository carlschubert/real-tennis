class UsersController < ApplicationController


  def create
    @user = User.new
    100.times do
      p '-----------------------------------'
    end
    p params
    p params[:user]

    User.create(auth_params)
    redirect_to root_path
  end

  def auth_params
    params.require(:user).permit( :password, :password_confirmation)
  end

  def signup
  end

  def new
    @user = User.new
  end

end
