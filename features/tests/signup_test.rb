class SignupTest
  def initialize(pages)
      @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_signup_form_submit_details
    @pages.page_home.submit_signup(Users.user)
    @pages.page_home.cancel_signup
  end

  def open_signup_form_submit_details_without_email
    @pages.page_home.submit_signup(Users.without_email_signup_user)
    @pages.page_home.confirm_signup
  end

  def open_signup_form_submit_details_without_passwords
    @pages.page_home.submit_signup(Users.without_passwords_signup_user)
    @pages.page_home.confirm_signup
  end

  def open_signup_form_submit_details_with_too_long_email
    @pages.page_home.submit_signup(Users.too_long_email_signup_user)
    @pages.page_home.cancel_signup
  end

  def open_signup_form_submit_details_with_too_long_project_name
    @pages.page_home.submit_signup(Users.too_long_project_name_user)
    @pages.page_home.cancel_signup
  end

  def home_page_visible?
    @pages.page_home.visible?
  end
end
