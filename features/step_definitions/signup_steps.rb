Given(/^I am on Apimation home page/) do
  @tests.signup_tests.load_home_page
end

When(/^I submit signup details/) do
  @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
  @tests.signup_tests.home_page_visible?
end

When(/^I enter signup details without email/) do
  @tests.signup_tests.open_signup_form_submit_details_without_email
end

When(/^I enter signup details without passwords/) do
  @tests.signup_tests.open_signup_form_submit_details_without_passwords
end

When(/^I enter signup details with too long email/) do
  @tests.signup_tests.open_signup_form_submit_details_with_too_long_email
end

When(/^I enter signup details with too long project name/) do
  @tests.signup_tests.open_signup_form_submit_details_with_too_long_project_name
end

When(/^I login/) do
  @tests.login_tests.open_login_form_submit_details
end

Then(/^I see project page/) do
  @tests.login_tests.project_page_visible?
end

When(/^I submit empty login fields/) do
  @tests.login_tests.open_login_form_submit_empty_details
end

When(/^I submit invalid login fields/) do
  @tests.login_tests.open_login_form_submit_invalid_details
end
