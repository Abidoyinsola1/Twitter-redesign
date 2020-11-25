require 'rails_helper'

RSpec.describe 'sign up page', type: :system do
  describe 'sign up page' do
    it 'shows the right content' do
      visit new_user_registration_path
      expect(page).to have_content('Username')
    end
  end
end

describe 'the sign-up process', type: :feature do
  it 'sign up a new user' do
    visit new_user_registration_path
    page.has_content?('Sign Up') do
      fill_in 'user[username]', with: 'doyinsola'
      fill_in 'user[name]', with: 'Doyinsola Adeyemi'
      fill_in 'user[email]', with: 'doyinsola@gmail.com'
      fill_in 'user[password]', with: 'doyinwith'
      fill_in 'user[password_confirmation]', with: 'doyinwith'
      click_button 'submit'
    end
    expect(page).to have_css('nav')
  end
end
