class Api::V1::PodcastsController < ApplicationController


  def show
    @user = User.find(params[:id])
    render json: @user.podcasts, adapter: :json
  end

  def index
    @user = User.find(params[:id])
    render json: @user.selected_podcasts, adapter: :json
  end
end
