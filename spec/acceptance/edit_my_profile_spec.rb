require 'spec_helper'

feature 'Admin Login' do
  background do
    visit '/'
    login 'admin', 'admin'
    click_on 'My profile'
  end

  scenario 'Edit Admin change email', js: true do
    fill_in 'email', with: 'admin@admin.ru'
    click_on 'Save'
    click_on 'My profile'
    find_field('email').value.should == 'admin@admin.ru'
  end
end
