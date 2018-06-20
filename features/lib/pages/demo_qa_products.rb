require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"
  PRODUCT_CATEGORY_H1 = 'Product Category'
  ACCESSORIES_CATEGORY_H1 = 'Accessories'
  SINGLE_PRODUCT_DIV = 'single_product_page_container'
  @people_also_bought = 'People who bought this item also bought:'
  @default_list_div = 'default_products_page_container'


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

  def check_product_list
    page.has_content?(@default_list_div)
  end




end
