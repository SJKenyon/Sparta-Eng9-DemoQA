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
  @@calculate_button = 'Calculate'


  def check_checkout_page
    page.has_content?(@@checkout_h1)
  end

  def check_error_message
    page.has_content?(@@checkout_error_message)
  end

  def find_checkout_quantity
    find_link("Checkout").text
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

  def fill_shipping_price_form
    select(@@random_generator.random_country_from_array,
      :from => 'country', visible: false)


    fill_in(@@region_field,
      :with => @@random_generator.random_region)
  end

  def click_calculate
    click_on(@@calculate_button)
  end

  def check_successful_purchase
    page.has_content?('Thank you, your purchase is pending. You will be sent an email once the order clears.')
  end

  def check_empty_region_field
    @@region_field = find(:xpath, '//*[@id="change_country"]/input[2]')
    find_field(@@region_field).value
  end

  def check_shipping_error_message
    page.has_content?('Please specify shipping location below to calculate your shipping costs')
  end



end #end of class
