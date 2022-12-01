require 'rspec'
require 'selenium-webdriver'
require 'selenium/devtools/v104'
require 'cucumber'
require 'allure-cucumber'

include RSpec::Matchers

driver = Selenium::WebDriver.for :chrome
@browser = ENV['browser'] || 'chrome'

AllureCucumber.configure do |c|
  c.issue_prefix = 'JIRA:'
end

Allure.configure do |c|
  c.results_directory = 'output/allure-results'
  c.clean_results_directory = true
end

Before do |scenario|
  @driver = driver
  puts "SCENARIO Name == #{scenario.name}"
end

After do |scenario|
  @driver.quit
  puts "SCENARIO finished == #{scenario.name}"

end