When("I click checkout") do
  demo_qa_homepage.visit_checkout
end

Then("it should redirect me to the checkout page") do
  expect(demo_qa_checkout.current_url).to eq("http://store.demoqa.com/products-page/checkout/")
end

Given("I have added one item to my basket") do
  # demo_qa_products.visit_iphone
  demo_qa_homepage.visit_homepage
  demo_qa_homepage.click_all_products_link
  demo_qa_products.visit_iphone
  demo_qa_products.add_to_cart
  demo_qa_products.item_added
  wait_for_ajax
  expect(demo_qa_checkout.find_checkout_quantity).to have_content("1")
end

When("I view my basket") do
  demo_qa_homepage.visit_checkout
end

Then("there should only be one item to view") do
  demo_qa_checkout.check_item_count.should == 2
end

Given("I have added three items to my basket") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("there should only be three items to view") do
  demo_qa_checkout.check_item_count.should == 4
end

When("I click add to cart on that one product") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing the all products page") do
  demo_qa_products.visit_all_products
end

When("I click add to cart on three seperate items") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should display those specific items in my basket") do
  pending # Write code here that turns the phrase above into concrete actions
end
