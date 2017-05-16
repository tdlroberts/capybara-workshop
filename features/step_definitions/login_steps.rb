Given(/^I am on Appimation home page/) do
  @tests.signup_test.load_home_page
end

When(/^I submit signup details/) do
  @tests.signup_test.open_signup_form_submit_details
end

Then(/^I see Apimation home page/) do
  @tests.signup_test.home_page_visible?
end