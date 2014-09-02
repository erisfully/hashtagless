require 'rails_helper'

describe 'viewing the homepage' do
  it 'displays welcome page' do
    visit root_path

    expect(page).to have_content "hashtagless"
  end
end