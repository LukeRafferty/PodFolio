class SelectedPodcastsController < ApplicationController
  skip_before_action :verify_authenticity_token
  #removing user - podcast association
  def destroy
    @user = User.find(session[:user_id])
    @podcast_join = SelectedPodcast.find(params[:id])
    @podcast_join.destroy
    if @podcast_join.destroy
      redirect_to user_path(@user), notice: "Podcast removed from your collection"
    else
      render @user, alert: "The podcast was not deleted"
    end
  end
end
