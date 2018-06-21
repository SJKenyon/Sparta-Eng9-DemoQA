require 'capybara/dsl'

class CheckoutPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  CHECKOUT_URL = "http://store.demoqa.com/products-page/checkout/"
  @@checkout_error_message = 'Oops, there is nothing in your cart.'
  @@checkout_h1 = 'Checkout'
  @@subtotal_span = 'Sub-Total:'
  @@continue_button = 'Continue'

  #form fields IN CHECKOUT


  def check_checkout_page
    page.has_content?(@@checkout_h1)
  end

  def check_error_message
    page.has_content?(@@checkout_error_message)
  end

  def find_checkout_quantity
    find_link("Checkout").text
  end

  def check_url
    driver.current_url
  end

  def check_item_count
    page.all('table tr').count
  end

  def check_subtotal
    page.has_content?(@@subtotal_span)
  end

  def click_continue_button
    find_link(@@continue_button).click
  end

  def fill_checkout_form

  end



end #end of class
