require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"
  IPHONE_URL = "http://store.demoqa.com/products-page/product-category/n/"
  PRODUCT_CATEGORY_H1 = 'Product Category'
  ACCESSORIES_CATEGORY_H1 = 'Accessories'
  DEFAULT_LIST_DIV = 'default_products_page_container'
  ITEM_ADDED_MESSAGE = "Item has been added to your cart!"

  def check_product_categories
    page.has_content?(PRODUCT_CATEGORY_H1)
  end

  def check_accessories_category
    page.has_content?(ACCESSORIES_CATEGORY_H1)
  end

  def visit_all_products
    click_link("All Product")
  end

  def visit_iphone
    visit(IPHONE_URL)
  end

  def add_to_cart
    click_on("Add To Cart")
  end

  def item_added
    page.has_content?(ITEM_ADDED_MESSAGE)
  end


end
