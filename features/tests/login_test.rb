class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def open_login_form_submit_details
    @pages.page_home.submit_login(Users.signup_user)
  end

  def project_page_visible?
    @pages.page_project.visible?(Users.signup_user)
  end
end