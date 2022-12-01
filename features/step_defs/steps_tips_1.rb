require 'selenium-webdriver'
require 'rubygems'
require 'rspec'

When(/^switch to last (?:window|tab)$/) do
  @driver.switch_to.window(@driver.window_handles.last)
end

When(/^visit "([^"]*)" url$/) do |url|
  @driver.navigate.to url
end

Then(/^verify below texts are displayed:$/) do |table|
  table.raw.each { |raw|
    expected_text = @driver.find_element(:css, "#navbar-backup-backup .nav-bb-right a").text
    expect(expected_text).to be raw[0]
  }
end