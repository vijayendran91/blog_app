require 'rails_helper'

RSpec.feature "Signing out  signed in users " do

  before do
    @john=User.create(email: "john@example.com",password: "paswword")
    visit "/"
    click_link "Sign in"
    fill_in "Email", with: @john.email
    fill_in "Password", with: @john.password
    click_button "Log in"
  end

  scenario "Sign out the user signed in" do
    visit "/"
    click_link "Sign out"
    expect(page).to have_content("Signed out successfully")
    expect(page).not_to have_content("Sign out")
  end
end