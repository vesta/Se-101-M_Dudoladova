require 'spec_helper'

feature 'Admin Login' do
  background do
    visit '/'
  end

  scenario 'Fill in login form', js: true do
    fill_in 'username', with: 'admin'
    fill_in 'password', with: 'admin'
    click_on 'Log in'

    page.should have_content('My profile')
    click_on 'My profile'

    click_on 'Log out'

    #Закрываем диалог подтверждения выхода.
    page.driver.browser.switch_to.alert.accept

    page.should_not have_content('My profile')
  end
end
