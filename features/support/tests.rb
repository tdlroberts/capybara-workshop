class Tests

  def initialize(pages)
    @pages = pages
  end

  def signup_test
    @signup_test ||= SignupTest.new(@pages)
    @signup_test
  end
end