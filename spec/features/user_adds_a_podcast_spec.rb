require 'rails_helper'

feature "user adds a podcast to their collection" do
  scenario "user navigates to the podcast search page and adds a podcast successfully" do
    user = FactoryGirl.create(:user)
    podcast = FactoryGirl.create(:podcast)
    visit root_path
    click_on 'Sign In'
    fill_in 'username', with: user.username
    fill_in 'password', with: user.password
    click_button 'Sign In'
    click_link "Add a podcast to your collection"
    expect(page).to have_content "Add a Podcast"
  end
end
