require 'capybara/dsl'
require_relative '../generator/random_form_values'

class CheckoutPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  CHECKOUT_URL = "http://store.demoqa.com/products-page/checkout/"
  @@checkout_error_message = 'Oops, there is nothing in your cart.'
  @@checkout_h1 = 'Checkout'
  @@subtotal_span = 'Sub-Total:'
  @@continue_button = 'Continue'

  #Instantiating the random generator
  @@random_generator = RandomFormValues.new

  #form fields IN CHECKOUT
  # @@region_field = find_field('shippingstate')

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
    select(@@random_generator.random_country_from_array,
      :from => 'country', visible: false)

    fill_in('collected_data[15]',
      :with => @@random_generator.random_region)
  end

  def check_successful_purchase
    page.has_content?('Thank you, your purchase is pending. You will be sent an email once the order clears.')
  end



end #end of class
