require 'capybara/dsl'

class CheckoutPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  CHECKOUT_URL = "http://store.demoqa.com/products-page/checkout/"

  def find_checkout_quantity
    find_link("Checkout").text
  end

  def check_url
    driver.current_url
  end

  def check_item_count
    page.all('table tr').count
  end

end
