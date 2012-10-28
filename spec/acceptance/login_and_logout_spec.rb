require 'spec_helper'

feature 'Admin Login' do
  background do
    visit '/'
  end

  scenario 'Fill in login form with valid parametres', js: true do
    login 'admin', 'admin'

    page.should have_content('My profile')

    click_on 'My profile'

    logout
    page.should_not have_content('My profile')
  end

  scenario 'Fill in login form with uncorrect password', js: true do
    login 'admin', 'admin3'
    page.should have_content('Incorrect user name or password')
  end

  scenario 'Fill in login form with uncorrect User name', js: true do
    login 'Santa', 'admin'
    page.should have_content('Incorrect user name or password')
  end
end
