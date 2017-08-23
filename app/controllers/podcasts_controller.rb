require 'audiosearch'

class PodcastsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def new
  end

  #audiosearch implementation
  def index
    client = Audiosearch::Client.new(
      :id     => ENV['AS_ID'],
      :secret => ENV['AS_SECRET'],
      :host   => 'https://www.audiosear.ch/',
      :debug  => false,
    )
    @user = User.find(session[:user_id])

    #search field not empty, pass down search value
    if !params["search"].nil? && params["search"] != ''
      search = params["search"]
      @res = client.search({ q: search }, 'shows')

    end
  end

  #receive params from save "form" and create new podcast
  def create
    @user = User.find(session[:user_id])
    @podcast = Podcast.find_or_initialize_by(name: params["title"], description: params["description"], buzzscore: params["buzzscore"], audiosearch_id: params["audiosearch_id"], img_url: params["img_url"])
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

  #direct to podcast's page
  def show
    @podcast = Podcast.find(params[:id])
  end
end
