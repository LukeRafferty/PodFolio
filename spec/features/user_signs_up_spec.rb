require "rails_helper"

feature "user signs up" do
  scenario "User signs up successfully" do
    visit root_path
    click_on 'Sign Up'
    expect(page).to_not have_content("Sign Out")

    fill_in 'user_username', with: 'John'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to have_content('Sign Out')
    expect(page).to have_content("John's PodFolio")
  end
  scenario "user fails to enter a name" do
    visit root_path
    click_on 'Sign Up'
    fill_in 'user_password', with: 'password'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to_not have_content('Sign Out')

  end
  scenario "user fails to enter a password" do
    visit root_path
    click_on 'Sign Up'
    fill_in 'user_username', with: 'John'
    click_button 'Sign Up'

    expect(page).to_not have_content('Sign Out')

  end
  scenario "user fails to confirm a password" do
    visit root_path
    click_on 'Sign Up'
    fill_in 'user_username', with: 'John'
    fill_in 'user_password', with: 'password'
    click_button 'Sign Up'

    expect(page).to_not have_content('Sign Out')

  end
  scenario "user only confirms their password" do
    visit root_path
    click_on 'Sign Up'
    fill_in 'user_username', with: 'John'
    fill_in 'user_password_confirmation', with: 'password'
    click_button 'Sign Up'

    expect(page).to_not have_content('Sign Out')

  end
end
