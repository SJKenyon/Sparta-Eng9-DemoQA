When("I click checkout") do
  demo_qa_homepage.click_checkout_button
end

And("I am redirected to the checkout page") do
  demo_qa_checkout.check_checkout_page
end

Then("I should see the correct error message") do
  demo_qa_checkout.check_error_message
end

Given("that I am on an individual product page") do
  
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on add to cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I click on the checkout button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the subtotal of my basket on the checkout page") do
  pending # Write code here that turns the phrase above into concrete actions
end
