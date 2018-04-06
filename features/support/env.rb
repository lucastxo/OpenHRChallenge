# require 'rspec'
# require 'page-object'
# require 'data_magic'

# World(PageObject::PageFactory)
require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'selenium-webdriver'
require 'capybara/dsl'


include Capybara::DSL
	Capybara.register_driver :selenium do |globalweb|
	Capybara::Selenium::Driver.new(globalweb, :browser => :chrome)
end

Capybara.configure do |config|
    Capybara.current_driver = :selenium
    config.default_max_wait_time = 15
    Capybara.ignore_hidden_elements = false
    Capybara.page.driver.browser.manage.window.maximize
end
