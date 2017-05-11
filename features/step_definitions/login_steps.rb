When(/^I am on Appimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

Then(/^I click Try Now/) do
  @pages.page_home.click_try_now
end

Then(/^I enter (.*) in SignUp email/) do |email|
  @pages.page_home.enter_signup_email(email)
end

Then(/^I enter (.*) in SignUp passwords/) do |password|
  @pages.page_home.enter_passwords(password)
end

Then(/^I enter (.*) in SignUp project name/) do |name|
  @pages.page_home.enter_project_name(name)
end

Then(/^I cancel SignUp/) do
  @pages.page_home.cancel_signup
end

Then(/^I submit signup details/) do
  @pages.page_home.submit_signup("email@test.com", "parole", "testProject")
end