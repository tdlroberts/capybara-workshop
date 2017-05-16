class Tests
  def signup_login
    @signup_login ||= SignupTest.new
    @signup_login
  end
end