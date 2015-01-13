class UsersController < ApplicationController


  def create
    100.times do
      p '-----------------------------------'
    end
    p params
    p params[:user]
    binding.pry
    User.create(auth_params)
    redirect_to root_path
  end

  def auth_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end

  def signup
  end

  def new
    @user = User.new
  end

end
