require 'capybara/dsl'
require_relative '../generator/random_form_values'

class AccountPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  LOGIN_URL = "http://store.demoqa.com/wp-login.php"
  ACCOUNT_URL = "http://store.demoqa.com/products-page/your-account/"
  REGISTER_URL = "http://store.demoqa.com/wp-login.php?action=register"
  SUCCESSFUL_REGISTRATION = "Registration complete. Please check your email."
  WRONG_PASSWORD_ALERT = "ERROR: The password you entered for the email address skenyon@spartaglobal.com is incorrect."
  NO_USERNAME = "ERROR: The username field is empty."
  NO_PASSWORD = "ERROR: The password field is empty."
  CORRECT_EMAIL = "skenyon@spartaglobal.com"
  @@random_generator = RandomFormValues.new

  def visit_account_page
    visit(ACCOUNT_URL)
  end

  def visit_register
    visit(REGISTER_URL)
  end

  def visit_login
    visit(LOGIN_URL)
  end

  def click_register
    click_link("Register")
  end

  def click_to_register
    find(:id, "wp-submit").click
  end

  def click_login
    click_link("Log in")
  end

  def click_login_account
    find(:id, "wp-submit").click
  end

  def fill_in_email
    find(:id, "user_email").send_keys("example@gmail.com")
  end

  def fill_in_username
    find(:id, "user_login").send_keys("username")
  end

  def fill_in_correct_email
    # find(:id, "user_login").send_keys(CORRECT_EMAIL)
    fill_in("user_login", :with => "skenyon@spartaglobal.com")
  end

  def fill_in_correct_password
    find(:id, "user_pass").send_keys("ilovesparta1")
  end

  def fill_in_incorrect_password
    find(:id, "user_pass").send_keys("password")
  end

  def wrong_password_message
    page.has_content?(WRONG_PASSWORD_ALERT)
  end

  def successful_reg
    page.has_content?(SUCCESSFUL_REGISTRATION)
  end

  def valid_username
    fill_in("user_login", :with => @@random_generator.generate_username)
  end

  def valid_email
    fill_in("user_email", :with => @@random_generator.generate_email_address)
  end

  def click_logout
    click_link("ONLINE STORE")
    click_link("Logout")
  end

end
