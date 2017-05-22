class ProjectPage < BasePage
    def initialize
        @user_email = Element.new(:xpath, "//div[@id='userEmail']/child::span")
        @project_name = Element.new(:xpath, "//div[@id='dropdownMenu1']/descendant::span")
        @test_data_title = Element.new(:id, "testDataTitle")
        @steps_frame = Element.new(:id, "steps")
        @cases_frame = Element.new(:id, "cases")
        @sets_frame = Element.new(:id, "sets")
        @button_logout = Element.new(:id, "logoutButton")
    end

    def visible?(email, project_name)
        @user_email = Element.new(:xpath, "//div[@id='userEmail']/descendant::span[contains(text(), '#{email}')]").visible?
        @project_name = Element.new(:xpath, "//div[@id='dropdownMenu1']/descendant::span[contains(text(), '#{project_name}')]").visible?
        @test_data_title = Element.new(:xpath, "//div[@id='testDataTitle' and normalize-space(.)='Test Data']").visible?
        @steps_frame.visible?
        @cases_frame.visible?
        @sets_frame.visible?
        @button_logout.visible?
    end
end