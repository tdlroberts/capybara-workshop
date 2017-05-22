class LoginTest
  def initialize(pages)
    @pages = pages
  end

  def open_login_form_submit_details(email, password)
    @pages.page_home.submit_login(email,password)
  end

  def project_page_visible?(email,project_name)
    @pages.page_project.visible?(email,project_name)
  end
end