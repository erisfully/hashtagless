require 'rails_helper'

feature "viewing the welcome page and registering" do
  scenario "user visits welcome page and registers" do
    visit root_path

    expect(page).to have_content "hashtagless"

    register_user("Ed", "Tiverusky", "radicaledward@bebop.com", "1234")

    expect(page).to have_content "dashboard"
  end

  scenario "user fails to enter in data" do
    visit "/register"

    register_user("", "", "", "")

    expect(page).to have_cotent "all fields are required"

  end
  def register_user(first_name, last_name, email, password)
    click_on "join"

    fill_in "user_first_name", with: first_name
    fill_in "user_last_name", with: last_name
    fill_in "user_email", with: email
    fill_in "user_password", with: password

    click_on "join"
  end
end
