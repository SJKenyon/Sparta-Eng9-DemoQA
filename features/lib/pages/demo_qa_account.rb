require 'capybara/dsl'

class AccountPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  LOGIN_URL = "http://store.demoqa.com/wp-login.php"
  SUCCESSFUL_REGISTRATION = "Registration complete. Please check your email."
  WRONG_PASSWORD = "ERROR: The password you entered for the email address ??? is incorrect. Lost your password?"
  NO_USERNAME = "ERROR: The username field is empty."
  NO_PASSWORD = "ERROR: The password field is empty."

end
