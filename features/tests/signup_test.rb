class SignupTest
  def initialize(pages)
    @pages = pages
  end

  def load_home_page
    @pages.page_home.load
    home_page_visible?
  end

  def open_signup_form_submit_details(email, password, project_name)
    @pages.page_home.sumbit_signup(email, password, project_name)
  end

  def home_page_visible?
    @pages.page_home.visible?
  end  
end
