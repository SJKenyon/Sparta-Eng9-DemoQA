require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"
  PRODUCT_CATEGORY_H1 = 'Product Category'
  ACCESSORIES_CATEGORY_H1 = 'Accessories'
  DEFAULT_LIST_DIV = 'default_products_page_container'
  SINGLE_PRODUCT_DIV = 'single_product_page_container'
  @people_also_bought = 'People who bought this item also bought:'



  def check_product_categories
    page.has_content?(PRODUCT_CATEGORY_H1)
  end

  def check_accessories_category
    page.has_content?(ACCESSORIES_CATEGORY_H1)
  end

  def check_single_product_page
    page.has_content?(SINGLE_PRODUCT_DIV)
    page.has_content?(@people_also_bought)
  end




end
