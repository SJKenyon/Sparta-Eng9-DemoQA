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
    email = find(:id, "user_email")
    email.send_keys("example@gmail.com")
  end

  def fill_in_username
    username = find(:id, "user_login")
    username.send_keys("username")
  end

  def fill_in_correct_email
    email = find(:id, "user_login")
    email.send_keys("skenyon@spartaglobal.com")
  end

  def fill_in_correct_password
    password = find(:id, "user_pass")
    password.send_keys("ilovesparta1")
  end

  def fill_in_incorrect_password
    password = find(:id, "user_pass")
    password.send_keys("password")
  end

  def wrong_password_message
    page.has_content?(WRONG_PASSWORD_ALERT)
  end

  def successful_reg
    page.has_content?(SUCCESSFUL_REGISTRATION)
  end

  def valid_username
    username = find(:id, "user_login")
    username.send_keys(@@random_generator.generate_username)
  end

  def valid_email
    email = find(:id, "user_email")
    email.send_keys(@@random_generator.generate_email_address)
  end

  def click_logout
    click_link("ONLINE STORE")
    click_link("Logout")
  end

  def invalid_email
    email = find(:id, "user_login")
    email.send_keys(@@random_generator.generate_email_address)
  end

  def check_email_error
    page.has_content?("ERROR: Invalid email address. Lost your password?")
  end

  def invalid_username
    email = find(:id, "user_login")
    email.send_keys(@@random_generator.generate_invalid_username)
  end

  def check_username_error
    page.has_content?("ERROR: Invalid username. Lost your password?")
  end

  def register_taken_username
    username = find(:id, "user_login")
    username.send_keys("1234")
  end

  def register_invalid_email
    email = find(:id, "user_email")
    email.send_keys(@@random_generator.generate_invalid_username)
  end

  def check_register_username_error
    page.has_content?("ERROR: This username is already registered. Please choose another one.")
  end

  def check_register_email_error
    page.has_content?("ERROR: The email address isn’t correct.")
  end

end
