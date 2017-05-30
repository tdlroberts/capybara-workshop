class HomePage < BasePage
 def initialize
    @button_start = Element.new(:id, 'start_button')
    @button_signup = Element.new(:id, 'signup-b')
    @button_login = Element.new(:id, 'login-b')
    @button_submit_login = Element.new(:xpath, '//div[@id="login"]/form/descendant::button[text()="Login"]')
    @button_close_signup = Element.new(:xpath, '//div[@id = "signup"]/descendant::img[@class = "closecross"]')
    @button_confirm_signup = Element.new(:xpath, '//div[@id = "signup"]/descendant::button[text()="Get Started"]')
    @input_email_signup = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "login"]')
    @input_signup_password1 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password1"]')
    @input_signup_password2 = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "password2"]')
    @input_project_name = Element.new(:xpath, '//div[@id = "signup"]/descendant::input[@name = "project_name"]')
    @input_email_login = Element.new(:xpath, '//div[@id="login"]/descendant::input[@name="login"]')
    @input_password_login = Element.new(:xpath, '//div[@id="login"]/descendant::input[@name="password"]')
  end

  def visible?
    @button_start.visible?
    @button_login.visible?
    @button_signup.visible?
  end

  def click_try_now
    @button_start.click
  end

  def click_login
    @button_login.click
  end

  def click_submit_login
    @button_submit_login.click
  end

  def enter_signup_email(email)
    @input_email_signup.send_keys email
  end

  def enter_signup_passwords(password)
    enter_signup_password password
    enter_signup_password_again password
  end

  def enter_signup_password password
    @input_signup_password1.send_keys password
  end

  def enter_signup_password_again password
    @input_signup_password2.send_keys password
  end

  def enter_signup_project_name(name)
    @input_project_name.send_keys name
  end

  def enter_login_email email
    @input_email_login.send_keys email
  end

  def enter_login_password password
    @input_password_login.send_keys password
  end

  def cancel_signup
    @button_close_signup.click
  end

  def confirm_signup
    @button_confirm_signup.click
  end

  def submit_signup(user)
    click_try_now
    enter_signup_email user.email
    enter_signup_passwords user.password
    enter_signup_project_name user.project_name
  end

  def submit_login(user)
    click_login
    enter_login_email user.email
    enter_login_password user.password
    click_submit_login
  end

  def load
    visit('/')
  end
end