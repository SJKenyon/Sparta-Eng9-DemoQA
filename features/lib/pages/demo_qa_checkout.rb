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
  @@region_field = 'wpsc_checkout_form_6'
  @@postcode_field = 'wpsc_checkout_form_8'
  @@phone_num_field = 'wpsc_checkout_form_18'
  @@billing_address_checkbox = 'shippingSameBilling'

  def visit_checkout_url
    visit(CHECKOUT_URL)
  end

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

  def fill_region_field
    fill_in(@@region_field, :with => @@random_generator.generate_region)
  end

  def fill_postcode_field
    fill_in(@@postcode_field, :with => @@random_generator.generate_postcode)
  end

  def fill_billing_country
    select(@@random_generator.random_country_from_array,
      :from => 'wpsc_checkout_form_7', visible: false)
  end

  def fill_phone_num_field
    fill_in(@@phone_num_field, :with => @@random_generator.generate_phone_number)
  end

  def tick_billing_address_box
    check(@@billing_address_checkbox)
  end

  def click_purchase
    click_on(@@purchase_button)
  end

  def check_successful_purchase
    page.has_content?('Transaction Results')
    page.has_content?('Thank you, your purchase is pending. You will be sent an email once the order clears.
      Thank you for purchasing with ONLINE STORE, any items to be shipped will be processed as soon as possible,
      any items that can be downloaded can be downloaded using the links on this page. All prices include tax and
      postage and packaging where applicable. You ordered these items:')
  end



  def fill_out_form_correctly
    find(:id, "wpsc_checkout_form_9").send_keys("example@gmail.com")
    find(:id, "wpsc_checkout_form_2").send_keys("example")
    find(:id, "wpsc_checkout_form_3").send_keys("sparta")
    find(:id, "wpsc_checkout_form_4").send_keys("some random street")
    find(:id, "wpsc_checkout_form_5").send_keys("city")
    find(:id, "wpsc_checkout_form_6").send_keys("dont know")
    # find("#wpsc_checkout_form_7").find(:xpath, 'option[2]').select_option
    find(:id, "wpsc_checkout_form_18").send_keys("07856434567")
    find(:id, "shippingSameBilling").click
  end

  def input_invalid_email
    fill_in(@@email_field, :with => @@random_generator.generate_invalid_username)
  end

  def check_email_error
    page.has_content?("Please enter a valid email.")
  end

  def input_invalid_first_name
    fill_in(@@first_name_field, :with => "")
  end

  def check_first_name_error
    page.has_content?("Please enter a valid first name.")
  end
  # def click_purchase
  #   find(".input-button-buy").click
  # end

end #end of class
