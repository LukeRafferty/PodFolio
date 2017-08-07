require 'audiosearch'

class PodcastsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
  end

  def index
    client = Audiosearch::Client.new(
      :id     => ENV['AS_ID'],
      :secret => ENV['AS_SECRET'],
      :host   => 'https://www.audiosear.ch/',
      :debug  => false,
    )
    @user = User.find(session[:user_id])

    if !params["search"].nil? && params["search"] != ''
      search = params["search"]
      @res = client.search({ q: search }, 'shows')

    end
  end


  def create
    @user = User.find(session[:user_id])
    @podcast = Podcast.find_or_initialize_by(name: params["title"], description: params["description"])
    if @podcast.save
      @selection = SelectedPodcast.find_or_initialize_by(user: @user, podcast: @podcast)
      if @selection.save
        flash[:notice] = 'Podcast added to your portfolio'
        redirect_to @user
      else
        flash[:alert] = "Something went wrong"
      end
    else
      flash[:alert] = "Something went wrong"
    end
  end

  def show
    podcast = Podcast.find(params[:id])
  end
end
