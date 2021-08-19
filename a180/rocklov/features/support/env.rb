require "capybara"
require "capybara/cucumber"
require 'webdrivers'
require "faker"

Capybara.register_driver :selenium_chrome do |app|
    version = Capybara::Selenium::Driver.load_selenium
    
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.add_argument("--disable-site-isolation-trials")
      opts.add_argument("--no-sandbox")
    end
    Capybara::Selenium::Driver.new(app, **{ :browser => :chrome, options: browser_options })
end

#Selenium::WebDriver::Firefox::Binary.path='C:\Program Files (x86)\Mozilla Firefox\firefox.exe'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://rocklov-web:3000"
    config.default_max_wait_time = 10
end