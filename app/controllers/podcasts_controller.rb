class PodcastsController < ApplicationController
  def new
  end

  def create
  end

  def show
    podcast = Podcast.find(params[:id])
  end
end
