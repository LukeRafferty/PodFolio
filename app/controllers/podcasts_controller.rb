require 'audiosearch'

class PodcastsController < ApplicationController
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

    if !params["search"].nil?
      search = params["search"]
      @res = client.search({ q: search }, 'shows')

    end
  end


  def create
  end

  def show
    podcast = Podcast.find(params[:id])
  end

end
