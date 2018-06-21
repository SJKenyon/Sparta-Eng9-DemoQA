require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  HOMEPAGE_URL = 'http://store.demoqa.com/'
  ALL_PRODUCTS_LINK = 'All Product'
  PRODUCT_CATEGORY_LINK = 'Product Category'
  ACCESSORIES_CATEGORY_LINK = 'Accessories'
  CAROUSEL_LINK = '#slides'
  @@homepage_products = 'group'
  @@homepage_products_array = []
  @@checkout_button = 'Checkout'


  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_all_products_link
    click_link(ALL_PRODUCTS_LINK)
  end

  def click_category
    find_link(PRODUCT_CATEGORY_LINK).hover
    click_link(ACCESSORIES_CATEGORY_LINK)
  end

  def click_individual_item
    find(CAROUSEL_LINK).click
  end

  def click_random_homepage_item
    all(@@homepage_products).each { |product|
      @@homepage_products_array.push(product)
    }
  end

  def click_checkout_button
    find_link(@@checkout_button).click
  end
  
  def visit_checkout
    click_link("Checkout")
  end

end #end of class
