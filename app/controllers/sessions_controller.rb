class SessionsController < ApplicationController

  def new
  end

  #session creation(log in)
  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{user.id}"
    else
      redirect_to '/login'
    end
  end

  #log out
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end
end
