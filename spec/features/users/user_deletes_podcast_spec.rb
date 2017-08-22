require 'rails_helper'

feature "user has a show page" do
  scenario "while logged in, user can delete their podcasts" do
    user = FactoryGirl.create(:user)

    visit root_path
    expect(page).to_not have_content('Sign Out')
    click_on 'Sign In'
    fill_in 'username', with: user.username
    fill_in 'password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content('Testcast')
    find('#user-show-delete-button').click
  end
end
