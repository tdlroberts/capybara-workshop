class Tests

  def initialize(pages)
    @pages = pages
  end

  def signup_test
    @signup_test ||= SignupTest.new(@pages)
    @signup_test
  end

  def login_test
    @login_test ||= LoginTest.new(@pages)
    @login_test
  end
end