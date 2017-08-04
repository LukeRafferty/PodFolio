class Api::V1::PodcastsController < ApplicationController


  def index
    render json: Podcast.all, adapter: :json
  end
end

# def index
#   render json: Podcast.all, adapter: :json
# end

# def index
#   render json: Podcast.where(#show page id matches join table id), adapter: :json
# end


# def index
#   @podcasts = User.find(session[:user_id]).podcasts
#   render json: @podcasts, adapter: :json
# end

# def index
#   render json: User.find(session[:user_id]).podcasts, adapter: :json
# end
