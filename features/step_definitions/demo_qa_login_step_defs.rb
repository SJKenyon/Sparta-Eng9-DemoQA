When("I click my account") do
  demo_qa_account.visit_account_page
end

And("I click log in") do
  demo_qa_account.click_login
end

Then("it should take me to the log in page") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/wp-login.php")
end

Given("I am on the log in page") do
  demo_qa_account.visit_login
end

And("I input the correct email") do
  demo_qa_account.fill_in_correct_email
end

And("I input the correct password") do
  demo_qa_account.fill_in_correct_password
end

When("I click to log in with my details") do
  demo_qa_account.click_login_account
end

Then("it should redirect me to my profile") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/wp-admin/profile.php")
end

And("I input the incorrect password") do
  demo_qa_account.fill_in_incorrect_password
end

Then("it should give me the correct error message") do
  expect(demo_qa_account.wrong_password_message).to eq true
end

Given("I am logged in") do
  demo_qa_account.visit_login
  demo_qa_account.fill_in_correct_email
  demo_qa_account.fill_in_correct_password
  demo_qa_account.click_login_account
end

When("I click to log out") do
  demo_qa_account.click_logout
end

Then("it should redirect me to the home page") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/")
end

# @login_invalid_email
When("I input an invalid email address") do
  demo_qa_account.invalid_email
end

When("I input a valid password") do
  demo_qa_account.fill_in_correct_password
  demo_qa_account.click_login_account
end

Then("I should receive the right error message") do
  demo_qa_account.check_email_error
end

# @login_invalid_username
