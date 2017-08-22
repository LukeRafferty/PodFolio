require 'rails_helper'

feature "user signs in" do
  it "signs in successfully" do
    user = FactoryGirl.create(:user)

    visit root_path
    expect(page).to_not have_content("Sign Out")
    click_on 'Sign In'
    fill_in 'username', with: user.username
    fill_in 'password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content("Signed in as")
    expect(page).to have_content("Sign Out")
    expect(page).to have_content(user.username)
  end

  it "fails to sign in" do
    user = FactoryGirl.create(:user)
    visit root_path
    click_on 'Sign In'
    fill_in 'username', with: user.username
    click_button 'Sign In'

    expect(page).to_not have_content("Signed in as")
    expect(page).to_not have_content(user.username)
  end
end
