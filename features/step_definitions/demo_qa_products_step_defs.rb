Given("I am on the homepage") do
  demo_qa_homepage.visit_homepage
end

When("I click on all products") do
  demo_qa_homepage.click_all_products_link
end

Then("it should display all product categories") do
  demo_qa_products.check_product_categories
end

When("I click on a product category") do
  demo_qa_homepage.click_category
end

Then("it should show me items relating to that category") do
  demo_qa_products.check_accessories_category
end

When("I click on an item") do
  demo_qa_homepage.click_individual_item
end

Then("it should show me that specific items page") do
  demo_qa_products.check_single_product_page
end

When("I click the all products link") do
  demo_qa_homepage.click_all_products_link
end

Then("I should see all the products in a list") do
  demo_qa_products.check_product_list
end

Given("I am viewing all the products") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click to view the products in a grid") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should show the products in a grid format") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on a specific product page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click on the photo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should bring up a larger photo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am viewing a product") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click add to cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("it should add that specific item to my basket") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am not on the homepage") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the demoqa logo") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be redirected to the homepage") do
  pending # Write code here that turns the phrase above into concrete actions
end
