Given(/^I am on Apimation home page/) do
  @pages.page_home.load
  @pages.page_home.visible?
end

When(/^I submit signup details: email (.*), password (.*) and project name (.*)/) do |email,password,project_name|
  @pages.page_home.sumbit_signup(email, password, project_name)
end

When(/^I login with email (.*) and password (.*)/) do |email, password|
  @pages.page_home.submit_login(email, password)
end

Then(/^I validate login page with email (.*) and project name (.*)/) do |email,project_name|
  @pages.page_login.visible?(email,project_name)
end
