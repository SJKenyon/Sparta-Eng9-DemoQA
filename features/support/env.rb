

#Do we need all this config info? It was not present in the env.rb file of the BBC lab on Monday...


#This is like the spec helper where all the configuration goes

#Were usig capybara inside cucumebr this time
require 'capybara/cucumber'
require 'capybara/dsl'

#we can reuse POM form last time so need to require it. We require the superclass here
require_relative 'superclass file path'

#CAPYBARA built around Selenium so need to configure the driver from here. Set up the driver AS WE RUN CUCUMBER
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)

end

#Cap config methods.
Capybara.configure do |config|
  #If you don't include this it will not allow you to acces thing s that are hidden to the user but
  # available in the DOM. We want to access those!
  config.ignore_hidden_elements = false

  # Only wait 10s for it to happen
  config.default_max_wait_time = 10

  # Use chrome as default browser
  config.default_driver = :chrome
end

#NOW WE'VE SET UP Capybara TO WORK INSIDE CUCUMBER

#the world object is the scope of Cucumber
World(name of superclass)
