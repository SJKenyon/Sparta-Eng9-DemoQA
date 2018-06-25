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
  demo_qa_products.visit_iphone
end

And("I click on add to cart") do
  demo_qa_products.add_to_cart
  demo_qa_products.find_checkout_text_1
end

And("I click on the checkout button") do
  demo_qa_homepage.visit_checkout
end

Then("I should see the subtotal of my basket on the checkout page") do
  demo_qa_checkout.check_subtotal
end

Given("that I am on the checkout page") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.visit_iphone
  demo_qa_products.add_to_cart
  demo_qa_products.find_checkout_text_1
  demo_qa_homepage.click_checkout_button
end

And("there is an item in my basket") do
  expect(demo_qa_checkout.check_item_count).to be >= 2
end

When("I click the continue button") do
  demo_qa_checkout.click_continue_button
end

And("I fill in the form correctly") do
  demo_qa_checkout.fill_out_form_correctly
  demo_qa_checkout.click_purchase
end

Then("I should be able to effectuate my purchase") do
  expect(demo_qa_homepage.current_url).to include("transaction-results")
end

Given("I have an item in my basket") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.visit_iphone
  demo_qa_products.add_to_cart
  demo_qa_products.find_checkout_text_1
end

Then("it should give me the correct success message") do
  demo_qa_checkout.check_successful_purchase
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
  expect(demo_qa_checkout.check_item_count).to eq 2
end

Given("I have added three seperate items to my basket") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.find_buy_buttons
  demo_qa_products.find_checkout_text_3
  expect(demo_qa_checkout.find_checkout_quantity).to have_content("3")
end

Then("there should only be three items to view") do
  expect(demo_qa_checkout.check_item_count).to eq 4
end

Given("there are items in my basket") do
  demo_qa_products.visit_all_products_page
  demo_qa_products.find_buy_buttons
  demo_qa_products.find_checkout_text_3
  demo_qa_homepage.click_checkout_button
end

When("I click remove on an item") do
  demo_qa_checkout.remove_item
end

Then("it should show one less item in my basket") do
  expect(demo_qa_checkout.check_item_count).to eq 3
end

Given("that I am on the checkout form page") do
  demo_qa_products.visit_iphone
  demo_qa_products.add_to_cart
  demo_qa_products.find_checkout_text_1
  demo_qa_homepage.visit_checkout
  demo_qa_checkout.click_continue_button
end

# @error_shipping_region
When("I neglect to input a shipping region") do
  demo_qa_checkout.click_calculate
end

Then("I should receive the correct error message") do
  demo_qa_checkout.check_shipping_error_message
end

# @form_errors. Checking that all the error messages are working in one test
When("I input invalid values in the form") do
  demo_qa_checkout.input_invalid_email
  demo_qa_checkout.input_invalid_first_name
  demo_qa_checkout.input_invalid_surname
  demo_qa_checkout.input_invalid_address
  demo_qa_checkout.input_invalid_city
  demo_qa_checkout.input_invalid_phone_num
  demo_qa_checkout.tick_billing_address_box
  demo_qa_checkout.click_purchase
  demo_qa_checkout.click_continue_button
end

Then("I should receive the right error messages") do
  demo_qa_checkout.check_email_error
  demo_qa_checkout.check_first_name_error
  demo_qa_checkout.check_address_error
  demo_qa_checkout.check_city_error
  demo_qa_checkout.check_billing_country_error
  demo_qa_checkout.check_phone_num_error
end
