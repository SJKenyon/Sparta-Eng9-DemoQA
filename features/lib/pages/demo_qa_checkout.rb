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
  @@purchase_button = 'Purchase'
  @@calculate_button = 'Calculate'
  @@email_field = 'wpsc_checkout_form_9'
  @@first_name_field = 'wpsc_checkout_form_2'
  @@surname_field = 'wpsc_checkout_form_3'
  @@address_field = 'wpsc_checkout_form_4'
  @@city_field = 'wpsc_checkout_form_5'


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

  def fill_shipping_country
    select(@@random_generator.random_country_from_array,
      :from => 'country', visible: false)
  end

  def click_calculate
    click_on(@@calculate_button)
  end

  def check_shipping_error_message
    page.has_content?('Please specify shipping location below to calculate your shipping costs')
  end

  #filling in the email and billing details part of the form
  def fill_email_field
    fill_in(@@email_field, :with => @@random_generator.generate_email_address)
  end

  def fill_first_name_field
    fill_in(@@first_name_field, :with => @@random_generator.generate_first_name)
  end

  def fill_surname_field
    fill_in(@@surname_field, :with => @@random_generator.generate_last_name)
  end

  def fill_address_field
    fill_in(@@address_field, :with => @@random_generator.generate_address)
  end

  def fill_city_field
    fill_in(@@city_field, :with => @@random_generator.generate_city)
  end
  # def fill_postcode_field
  #   fill_in()
  # end

  def click_purchase
    click_on(@@purchase_button)
  end

  def check_successful_purchase
    page.has_content?('Thank you, your purchase is pending. You will be sent an email once the order clears.
      Thank you for purchasing with ONLINE STORE, any items to be shipped will be processed as soon as possible,
      any items that can be downloaded can be downloaded using the links on this page. All prices include tax and
      postage and packaging where applicable. You ordered these items:')
  end




end #end of class
