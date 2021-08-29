require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "webdrivers"
require "faker"

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "fire_headless"
  @driver = :selenium_headless
when "chrome_headles"
  @driver = :selenium_chrome_headless
else
  raise "Invalid browser_options with #{@driver}"
end

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
  config.default_driver = @driver
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end
