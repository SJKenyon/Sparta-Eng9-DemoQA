require 'capybara/cucumber'
require 'capybara/dsl'
require_relative '../lib/demo_qa_site'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

#Cap config methods
Capybara.configure do |config|
  config.ignore_hidden_elements = true
  config.default_max_wait_time = 10
  config.default_driver = :chrome
end

World(DemoQA)
