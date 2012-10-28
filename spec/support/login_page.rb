def login name, password
  fill_in 'username', with: name
  fill_in 'password', with: password
  click_on 'Log in'
end

def logout
  click_on 'Log out'
  #Закрываем диалог подтверждения выхода.
   page.driver.browser.switch_to.alert.accept
end
