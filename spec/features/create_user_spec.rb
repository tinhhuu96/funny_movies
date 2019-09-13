require 'rails_helper'
 
RSpec.describe 'Creating a user', type: :feature do
  scenario 'valid inputs' do
    visit new_user_registration_path
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[email]', with: 'abcd@gmail.com'
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password]', with: '123456'
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password_confirmation]', with: '123456'
    click_on 'Sign up'
    expect(page).to have_content('Welcome! You have signed up successfully')
  end

  scenario 'invalid inputs' do
    visit new_user_registration_path
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[email]', with: ''
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password]', with: '123456'
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password_confirmation]', with: '123456'
    click_on 'Sign up'
    expect(page).to have_content("Email can't be blank")
  end
end