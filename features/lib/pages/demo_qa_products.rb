require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"
  PRODUCT_CATEGORY_H1 = 'Product Category'
  ACCESSORIES_CATEGORY_H1 = 'Accessories'



  def check_product_categories
    page.has_content?(PRODUCT_CATEGORY_H1)
  end

  def check_accessories_category
    page.has_content?(ACCESSORIES_CATEGORY_H1)
  end


end
