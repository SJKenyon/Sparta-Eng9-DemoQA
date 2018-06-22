require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  ALL_PRODUCTS_URL = "http://store.demoqa.com/products-page/product-category/"
  IPHONE_URL = "http://store.demoqa.com/products-page/product-category/n/"
  PRODUCT_CATEGORY_H1 = 'Product Category'
  ACCESSORIES_CATEGORY_H1 = 'Accessories'
  SINGLE_PRODUCT_DIV = 'single_product_page_container'
  @people_also_bought = 'People who bought this item also bought:'
  @default_list_div = 'default_products_page_container'

  #Using class variables here because contants are too heavy
  # and instance variables are lighter but not available everywhere in
  # the class. So class vars are a good compromise
  @@grid_view_button = 'Grid'
  @@grid_view_div = 'grid_view_products_page_container'
  @@product_image = '.product-image'
  DEFAULT_LIST_DIV = 'default_products_page_container'
  ITEM_ADDED_MESSAGE = "Item has been added to your cart!"

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

  def visit_all_products_page
    visit(ALL_PRODUCTS_URL)
  end

  def click_grid_view
    find_link(@@grid_view_button).click
  end

  def check_grid_view
    page.has_content?(@@grid_view_div)
  end

  def click_product_image
    find(:css, @@product_image).click
  end

  def visit_all_products
    click_link("All Product")
  end

  def visit_iphone
    visit(IPHONE_URL)
  end

  def add_to_cart
    click_on("Add To Cart")
    sleep 2
  end

  def item_added
    page.has_content?(ITEM_ADDED_MESSAGE)
  end

  def find_checkout_text_1
    page.find('em', text: '1')
  end

  def find_checkout_text_3
    page.find('em', text: '3')
  end

  def find_buy_buttons
    page.all(".wpsc_buy_button").each do |button|
      button.click
    end
  end

  def click_logo
    find(:id, "logo").click
  end

end #end of class
