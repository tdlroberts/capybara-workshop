require 'date'
module Users
    def Users.signup_user
        @signup_user ||= User.new(email: 'tdlunlockd@gmail.com', password: 'Parole123', project_name: 'Capybara Automation')
        @signup_user
    end
end

class User
    attr_reader :email, :password, :project_name
    def initialize(email: 'default', password: '0', project_name: 'default')
        @email = email
        @password = password
        @project_name = project_name
        # @project_name = 'UIauto' + DateTime.now.strftime('%Q')
    end
end