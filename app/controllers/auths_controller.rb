class AuthsController < ApplicationController
  include AuthsHelper
  include ErrorsHelper

  def login
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end

  def signup
  end

  def create_session
    user = User.find_by_name params[:auth][:user_name]

    if user && user.authenticate(params[:auth][:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      set_error('Invalid login.')
      redirect_to '/login'
    end
  end

  # def auth_params
  #   params.require(:auth).permit(:user_name, :password)
  # end
end
