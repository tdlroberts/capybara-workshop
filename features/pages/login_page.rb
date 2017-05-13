class LoginPage < BasePage

  def visible?(email, project)
    @user_email = Element.new(:xpath, "//div[@id = 'userEmail']/descendant::span[contains(text(), '#{email}')]").visible?
    @project_name = Element.new(:xpath, "//div[@id = 'dropdownMenu1']/descendant::span[contains(text(), '#{project}')]").visible?
    @test_data_title = Element.new(:id, "testDataTitle").visible?
    @steps_frame = Element.new(:id, "steps").visible?
    @cases_frame = Element.new(:id, "cases").visible?
    @sets_frame = Element.new(:id, "sets").visible?
    @button_logout = Element.new(:id, "logoutButton").visible?
  end
end
