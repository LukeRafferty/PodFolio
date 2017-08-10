require "rails_helper"

RSpec.describe Api::V1::UsersController, type: :controller do
  let!(:user) { User.create(
    username: "Test User",
    password: "12345"
    )
  }
  let!(:podcast) { Podcast.create(
    name: "Test Podcast",
    description: "This is a test podcast for testing",
    buzzscore: "0.991",
    audiosearch_id: 1,
    img_url: "https://d2u1padl9j7w5j.cloudfront.net/rose-buddies.LWZ4h5.audiosear.ch/600x600bb.jpg",
    )
  }

  let!(:selected_podcast) { SelectedPodcast.create(
    user: user,
    podcast: podcast,
    )
  }

  describe "GET#index" do
    it "should return the correct object" do
      get :index
      body = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(body.length).to eq 1

      expect(body["users"]).to be_kind_of(Array)
      expect(body["users"]).to_not be_kind_of(Hash)
      expect(body["users"].first["username"]).to eq("Test User")
      # bcrypt works
      expect(body["users"].first["password"]).to eq(nil)
    end
  end
end
