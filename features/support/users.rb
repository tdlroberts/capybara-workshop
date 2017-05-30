require 'securerandom'
module Users
    def Users.user
        @user ||= User.new(email: 'tdlunlockd@gmail.com', password: 'Parole123', project_name: 'Capybara Automation')
        @user
    end

    def Users.invalid_login_user

        @invalid_login_user ||= User.new()
        @invalid_login_user
    end

    def Users.empty_login_user
        @empty_login_user ||= User.new(email: '', password: '', project_name: '')
        @empty_login_user
    end

    def Users.without_email_signup_user
        @without_email_signup_user ||= User.new(email: '')
        @without_email_signup_user
    end

    def Users.without_passwords_signup_user

        @without_passwords_signup_user ||= User.new(password: '')
        @without_passwords_signup_user
    end

    def Users.too_long_email_signup_user
        generated_email = SecureRandom.hex(100) + '@gmail.com'
        @too_long_email_signup_user ||= User.new(email: generated_email)
        @too_long_email_signup_user
    end

    def Users.too_long_project_name_user
        generated_project_name = SecureRandom.hex(100)
        @too_long_project_name_user ||= User.new(project_name: generated_project_name)
        @too_long_project_name_user
    end

end
class User
    attr_reader :email, :password, :project_name
    def initialize(email: SecureRandom.hex(10) + '@gmail.com', password: SecureRandom.hex(14), project_name: SecureRandom.hex(20))
        @email = email
        @password = password
        @project_name = project_name
    end
end