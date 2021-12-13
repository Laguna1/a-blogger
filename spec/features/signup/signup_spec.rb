# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Signup Page', type: :feature do
  
    feature 'User sign up' do
        scenario 'User registers' do
          visit(new_user_registration_path)
          puts page.body
          fill_in 'Fullname', with: 'fullname'
          fill_in('user[mobile_no]', with: '380_501_111_112')
          fill_in('user[email]', with: 'user@email.com')
          fill_in('user[password]', with: 'password')
          fill_in('user[password_confirmation]', with: 'password')
          click_button('Submit')
          expect(page).to have_content('Welcome! You have signed up successfully.')
        end
      end
    # let!(:fullname) { 'fullname' }
    # let!(:mobile_no) { '380_501_111_112' }
    # let!(:email) { 'user@email.com' }
    # let!(:password) { 'password' }

    # it "creates new user" do
    #     visit 'new_user_registration_path'
    #     within('form', visible: false) do
    #       fill_in 'user_fullname', with: fullname
    #       fill_in 'user[mobile_no]', with: mobile_no
    #       fill_in 'user[email]', with: email
    #       fill_in 'user[password]', with: password
    #       fill_in 'user[password_confirmation]', with: password
    #     end
    #     click_button 'Submit'
    #     expect(page).to have_content('Welcome! You have signed up successfully.')
    # end
    # before do
    #   visit new_user_registration_path
    # end

    # scenario 'with valid credentials' do
    #   within('form') do
    #     fill_in 'user[fullname]', with: fullname
    #     fill_in 'user[mobile_no]', with: mobile_no
    #     fill_in 'user[email]', with: email
    #     fill_in 'user[password]', with: password
    #     fill_in 'user[password_confirmation]', with: password
    #   end
    #   click_button 'Submit'
    #   expect(page).to have_content('Welcome! You have signed up successfully.')
    # end

    # scenario 'invalid when email already exists' do
    #   new_user = create(:user)
    #   fill_in 'user_fullname', with: new_user.fullname
    #   fill_in 'email', with: new_user.email
    #   fill_in 'mobile_no', with: new_user.mobile_no
    #   fill_in 'password', with: new_user.password
    #   fill_in 'password_confirmation', with: new_user.password
    #   click_button 'Submit'
    #   expect(page).to have_text 'Email has already been taken'
    # end
  end
