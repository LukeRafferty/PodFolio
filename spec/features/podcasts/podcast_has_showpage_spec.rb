require 'rails_helper'
  feature 'podcast has show page' do
    scenario 'user can access podcast page from their home screen' do
      user = FactoryGirl.create(:user)

      visit root_path
      expect(page).to_not have_content("Sign Out")
      click_on 'Sign In'
      fill_in 'username', with: user.username
      fill_in 'password', with: user.password
      click_button 'Sign In'

      click_link 'Testcast'
      expect(page).to have_content('Testcast')

      expect(page).to have_content('1 user is following this podcast.')

      expect(page).to have_content('Audiosearch buzz score:')
  end
end
