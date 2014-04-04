require 'rspec/expectations'
require 'capybara/cucumber'
require 'capybara/poltergeist'

Capybara.default_driver = :selenium
Capybara.app_host = 'http://www.realestate.com.au'
Capybara.run_server = false
