class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
  end

  def show
    @user = User.find(params[:id])
    @selected_podcasts = @user.selected_podcasts
  end

  def create
    @user = User.new(user_params)
    #assign user id and move to user page
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/signup'
    end
  end



  private
  #protecting params
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
