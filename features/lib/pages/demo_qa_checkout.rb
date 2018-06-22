require 'capybara/dsl'

class CheckoutPage

  include Capybara::DSL

  HOMEPAGE_URL = "http://store.demoqa.com/"
  CHECKOUT_URL = "http://store.demoqa.com/products-page/checkout/"
  @@checkout_error_message = 'Oops, there is nothing in your cart.'
  @@checkout_h1 = 'Checkout'
  @@subtotal_span = 'Sub-Total:'

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

  def click_continue
    click_link("Continue")
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

  def click_purchase
    find(".input-button-buy").click
  end

end #end of class
