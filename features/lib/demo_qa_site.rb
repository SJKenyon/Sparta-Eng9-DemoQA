require_relative "pages/demo_qa_homepage"
require_relative "pages/demo_qa_account"
require_relative "pages/demo_qa_products"
require_relative "pages/demo_qa_checkout"


module DemoQA

  def demo_qa_homepage
    Homepage.new
  end

  def demo_qa_account
    AccountPage.new
  end

  def demo_qa_products
    ProductsPage.new
  end

  def demo_qa_checkout
    CheckoutPage.new
  end

end
