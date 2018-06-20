require 'capybara/dsl'

class Homepage

  include Capybara::DSL

  HOMEPAGE_URL = 'http://store.demoqa.com/'
  ALL_PRODUCTS_LINK = 'All Product'
  PRODUCT_CATEGORY_LINK = 'Product Category'
  ACCESSORIES_CATEGORY_LINK = 'Accessories'
  CAROUSEL_LINK = '#slides'


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



end
