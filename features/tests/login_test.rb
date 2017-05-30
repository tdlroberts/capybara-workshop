class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def open_login_form_submit_details
    @pages.page_home.submit_login(Users.user)
  end

  def project_page_visible?
    @pages.page_project.visible?(Users.user)
  end

  def open_login_form_submit_empty_details
    @pages.page_home.submit_login(Users.empty_login_user)
  end

  def open_login_form_submit_invalid_details
    @pages.page_home.submit_login(Users.invalid_login_user)
  end
end