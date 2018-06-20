require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  HOMEPAGE_URL = 'http://store.demoqa.com/'
  ALL_PRODUCTS_LINK = 'All Product'
  PRODUCT_CATEGORY_H1 = 'Product Category'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def click_all_products_link
    click_link(ALL_PRODUCTS_LINK)
  end

  def check_product_categories
    page.has_content?(PRODUCT_CATEGORY_H1)
  end



end
