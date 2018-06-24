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

Given("I have got email confirmation") do
  pending
end

When("I click the verify link") do
  pending
end

When("I create a valid password") do
  pending
end

Then("it should let me log in") do
  pending
end
