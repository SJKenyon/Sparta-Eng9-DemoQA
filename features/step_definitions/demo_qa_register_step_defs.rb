Given("I am on the account page") do
  demo_qa_account.visit_account_page
end

When("I click register") do
  demo_qa_account.click_register
end

Then("I should be taken to the register page") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/wp-login.php?action=register")
end

Given("I am on the register page") do
  demo_qa_account.visit_register
end

And("I input a valid username") do
  demo_qa_account.valid_username
end

And("I input a valid email") do
  demo_qa_account.valid_email
end

When("I click to register the account") do
  demo_qa_account.click_to_register
end

Then("it should show the correct registration message") do
  expect(demo_qa_account.successful_reg).to eq true
end

# @invalid_register
And("I input a username that is already taken") do
  demo_qa_account.register_taken_username
end

And("I input an invalid email") do
  demo_qa_account.register_invalid_email
  demo_qa_account.click_to_register
end

Then("it should show the correct error messages") do
  demo_qa_account.check_register_username_error
  demo_qa_account.check_register_email_error
end
