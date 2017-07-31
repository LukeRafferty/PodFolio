require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:username).when('username') }
  it { should_not have_valid(:username).when(nil) }

  it "has matching password confirmation" do
    user_one = User.new
    user_one.username = 'example'

    user_one.password = "password"
    user_one.password_confirmation = 'anther password'

    expect(user_one).to_not be_valid


    user_two = User.new
    user_two.email = "example@example.com"
    user_two.username = 'example'
    user_two.password='password'
    user_two.password_confirmation='password'
    expect(user_two).to be_valid
  end
end
