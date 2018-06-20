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
