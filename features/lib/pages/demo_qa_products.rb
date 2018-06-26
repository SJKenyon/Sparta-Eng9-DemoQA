require 'capybara/dsl'

class ProductsPage

  include Capybara::DSL

  def initialize
    @all_products_url = "http://store.demoqa.com/products-page/product-category/"
    @iphone_url = "http://store.demoqa.com/products-page/product-category/n/"
    @product_category_h1 = 'Product Category'
    @accessories_category_h1 = 'Accessories'
    @single_product_div = 'single_product_page_container'
    @people_also_bought = 'People who bought this item also bought:'
    @default_list_div = 'default_products_page_container'
    @grid_view_button = 'Grid'
    @grid_view_div = 'grid_view_products_page_container'
    @product_image = '.product-image'
    @item_message_added = "Item has been added to your cart!"
  end

  def check_product_categories
    page.has_content?(@product_category_h11)
  end

  def check_accessories_category
    page.has_content?(@accessories_category_h1)
  end

  def check_single_product_page
    page.has_content?(@single_product_div)
    page.has_content?(@people_also_bought)
  end

  def check_product_list
    page.has_content?(@@default_list_div)
  end

  def visit_all_products_page
    visit(@all_products_url)
  end

  def click_grid_view
    find_link(@grid_view_button).click
  end

  def check_grid_view
    page.has_content?(@grid_view_div)
  end

  def click_product_image
    find(:css, @product_image).click
  end

  def visit_all_products
    click_link("All Product")
  end

  def visit_iphone
    visit(@iphone_url)
  end

  def add_to_cart
    click_on("Add To Cart")
  end

  def item_added
    page.has_content?(@item_message_added)
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
