class Api::V1::UsersController < ApplicationController
  #create API for react buttons
  def index
    render json: User.all, adapter: :json
  end
end
