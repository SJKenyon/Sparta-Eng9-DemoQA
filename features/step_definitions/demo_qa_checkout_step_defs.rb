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

And("I click on add to cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the checkout button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the subtotal of my basket on the checkout page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("that I am on the checkout page") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("there are items in my basket") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the continue button") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I fill in the form correctly") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to effectuate my purchase") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I have an item in my basket") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should give me the correct success message") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should redirect me to the checkout page") do
  expect(demo_qa_checkout.current_url).to eq("http://store.demoqa.com/products-page/checkout/")
end

Given("I have added one item to my basket") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.visit_iphone
  demo_qa_products.add_to_cart
  demo_qa_products.item_added
  demo_qa_products.find_checkout_text_1
  expect(demo_qa_checkout.find_checkout_quantity).to have_content("1")
end

When("I view my basket") do
  demo_qa_homepage.visit_checkout
end

Then("there should only be one item to view") do
  demo_qa_checkout.check_item_count.should == 2
end

Given("I have added three seperate items to my basket") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.find_buy_buttons
  demo_qa_products.find_checkout_text_3
  expect(demo_qa_checkout.find_checkout_quantity).to have_content("3")
end

Then("there should only be three items to view") do
  demo_qa_checkout.check_item_count.should == 4
end

Given("I am viewing the all products page") do
  demo_qa_products.visit_all_products
end
