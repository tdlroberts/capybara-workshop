Given(/^I am on Appimation home page/) do
  visit('/')  # open root domain
end

When(/^I open Login form/) do
  find(:id, 'login-b').click

  page.has_field?('login', :type => 'email')
  page.has_field?('password', :type => 'password')
  page.has_button?('Login')
end

And(/^I enter (.*) in Login Email/) do |email|
  find(:xpath, '//div[@id="login"]/descendant::input[@name="login"]').send_keys(email)
end

And(/^I enter (.*) in Login Password/) do |password|
  find(:xpath, '//div[@id="login"]/descendant::input[@name="password"]').send_keys(password)
end

And(/^I click on "Login" button/) do
  find(:xpath, '//div[@id="login"]/form/descendant::button[text()="Login"]').click
end

Then (/^I wait for page to load/) do
  find(:id, 'logoutButton').visible?
  find(:id, 'userEmail').visible?
  # check if toolbar is displayed
  all(:xpath, '//div[@id="toolbar"]/div[@class="right-menu"]/child::*').each do |el|
    el.visible?
  end
  # check if middle elements are displayed
  all(:xpath, '//div[@id="requestViewBuild"]/child::div').each do |el|
    el.visible?
  end
  find(:id, 'stepMainResponseView').visible?
  # check if right menu is displayed
  all(:xpath, '//div[@id="rightMenuContainer"]/child::div').each do |el|
    el.visible?
  end
  # check if left menu is displayed
  all(:xpath, '//div[@class="slideout-menu"]/div/child::div').each do |el|
    el.visible?
  end
end

And(/^I validate Login/) do
  # check if users email is shown
  page.has_content?("tdlunlockd@gmail.com")
  # check if Projects name is shown
  page.has_content?("Capybara Automation")
  # check if login form elements are not shown
  page.has_no_field?('login', :type => 'email')
  page.has_no_field?('password', :type => 'password')
  page.has_no_button?('Login')
  # check if homepage elements are not shown
  page.has_no_button?('login-b')
  page.has_no_button?('signup-b')
  page.has_no_selector?(:id, 'video')
end