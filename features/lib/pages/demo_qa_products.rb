require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"

end
