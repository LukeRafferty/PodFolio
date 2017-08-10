class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all, adapter: :json
  end
end
