require "rails_helper"

feature "user signs up" do
  scenario "as a user" do
    visit root_path
    click_on 'Sign Up'
    expect(page).to_not have_content("Sign Out")

    fill_in 'user_username', with: 'John'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content('Sign Out')

  end
end
