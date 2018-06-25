Given("I am on the homepage") do
  demo_qa_homepage.visit_homepage
end

When("I click on all products") do
  demo_qa_homepage.click_all_products_link
end

Then("it should display all products") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/products-page/product-category/")
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
  demo_qa_products.visit_all_products_page
end

When("I click to view the products in a grid") do
  demo_qa_products.click_grid_view
end

Then("it should show the products in a grid format") do
  demo_qa_products.check_grid_view
end

Given("I am not on the homepage") do
  demo_qa_products.visit_all_products_page
  expect(demo_qa_homepage.current_url).not_to eq("http://store.demoqa.com/")
end

When("I click the demoqa logo") do
  demo_qa_products.click_logo
end

Then("I should be redirected to the homepage") do
  expect(demo_qa_homepage.current_url).to eq("http://store.demoqa.com/")
end
