class Api::V1::PodcastsController < ApplicationController

  def index
    render json: Podcast.all, adapter: :json
  end
end
