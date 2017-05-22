Given(/^I am on Appimation home page/) do
  @tests.signup_test.load_home_page
end

When(/^I submit signup details: email (.*), password (.*) and project name (.*)/) do |email, password, project_name|
  @tests.signup_test.open_signup_form_submit_details(email,password,project_name)
end

Then(/^I see Apimation home page/) do
  @tests.signup_test.home_page_visible?
end

When(/^I login with email (.*) and password (.*)/) do |email, password|
  @tests.login_test.open_login_form_submit_details(email,password)
end

Then(/^I validate project page with email (.*) and project name (.*)/) do |email,project_name|
  @tests.login_test.project_page_visible?(email,project_name)
end