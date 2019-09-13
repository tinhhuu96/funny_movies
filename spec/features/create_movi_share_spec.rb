require 'rails_helper'
 
RSpec.describe 'Creating a youtube movie share', type: :feature do
  scenario 'valid inputs' do
    visit new_user_registration_path
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[email]', with: 'abcd@gmail.com'
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password]', with: '123456'
    find(:xpath, '//*[@id="new_user"]').fill_in 'user[password_confirmation]', with: '123456'
    click_on 'Sign up'
    
    visit share_path
    fill_in 'Link', with: 'https://youtu.be/v7wErmth4k4'
    click_on 'Share'
    visit root_path
    expect(page).to have_content('Movi Title')
  end
end