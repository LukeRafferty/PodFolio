require 'rails_helper'

RSpec.describe Podcast, type: :model do
  it { should have_valid(:name).when('name') }
  it { should_not have_valid(:name).when(nil) }

  it "has a name" do
    podcast_one = Podcast.new
    podcast_one.name = 'TestPodcast'
    podcast_one.description = "TESTDescription"

    expect(podcast_one).to be_valid
  end

  it "has a name" do
    podcast_one = Podcast.new
    podcast_one.name = 'TestPodcast'

    expect(podcast_one).to be_valid
  end
  
  it "does not provide enough information" do
    podcast_one = Podcast.new
    podcast_one.description = "TESTDescription"

    expect(podcast_one).to_not be_valid
  end

end
