Given(/^I am on Apimation home page/) do
  @tests.signup_tests.load_home_page
end

When(/^I submit signup details/) do
    @tests.signup_tests.open_signup_form_submit_details
end

Then(/^I see Appimation home page/) do
    @tests.signup_tests.home_page_visible?
end

When(/^I login/) do
  @tests.login_tests.open_login_form_submit_details
end

Then(/^I see project page/) do
  @tests.login_tests.project_page_visible?
end