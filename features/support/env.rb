require "selenium-webdriver"
require "webdrivers"
require 'rspec'
$driver = Selenium::WebDriver.for :firefox
at_exit do
    $driver.quit
end