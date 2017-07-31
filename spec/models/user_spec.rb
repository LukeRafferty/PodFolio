require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:username).when('username') }
  it { should_not have_valid(:username).when(nil) }

  it "has matching password confirmation" do
    user_one = User.new
    user_one.username = 'TestUsernam'
    user_one.password = "password"
    user_one.password_confirmation = 'anther password'

    expect(user_one).to_not be_valid


    user_two = User.new
    user_two.username = 'TestUsername'
    user_two.password='password'
    user_two.password_confirmation='password'
    expect(user_two).to be_valid
  end
  it "does not provide enough information" do
    user_one = User.new
    user_one.username = 'TestUsername'
    expect(user_one).to_not be_valid


    user_two = User.new
    user_two.password ='password'
    user_two.password_confirmation='password'
    expect(user_two).to_not be_valid
  end

end
