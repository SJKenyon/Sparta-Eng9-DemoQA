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
  demo_qa_account.fill_in_username
end

And("I input a valid email") do
  demo_qa_account.fill_in_email
end

When("I click to register the account") do
  demo_qa_account.click_to_register
end

Then("it should show the correct registration message") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have got email confirmation") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the verify link") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I create a valid password") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should let me log in") do
  pending # Write code here that turns the phrase above into concrete actions
end
