require 'rails_helper'

describe 'viewing the welcome page and registering' do
  it 'user can visit welcome page and register' do
    visit root_path

    expect(page).to have_content "hashtagless"
    click_on 'join'

    fill_in 'user_first_name', with: 'Ash'
    fill_in 'user_last_name', with: 'Clarke'
    fill_in 'user_email', with: 'ash@example.com'
    fill_in 'user_password', with: '1234'

    click_on 'join'

    expect(page).to have_content 'dashboard'

  end
end