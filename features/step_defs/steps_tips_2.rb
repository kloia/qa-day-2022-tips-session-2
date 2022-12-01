require 'selenium/devtools'
require_relative '../utils/data_generator_util'

When(/^book a holiday$/) do
  @driver.intercept do |request, &continue|
    continue.call do |response|
      if request.url.include? "https://automationintesting.online"
        puts "Request url => #{request.url} \t
            Request post data => #{request.post_data} \t
            Request method => #{request.method} \t
            Response code => #{response.code} \t
            Response body => #{response.body} \n"
      end
    end
  end
  wait = Selenium::WebDriver::Wait.new(:timeout => 15)
  hack_me_button = wait.until { @driver.find_element(:css, "#collapseBanner button") }
  hack_me_button.click
  open_booking_button = wait.until { @driver.find_element(:css, ".openBooking") }
  open_booking_button.click
  first_name_txt = wait.until { @driver.find_element(:name, "firstname") }
  first_name_txt.send_keys("demouser")
  @driver.find_element(:name, "lastname").send_keys("lastname#{DataGeneratorUtil.get_random_string_lower_case}")
  @driver.find_element(:name, "email").send_keys("testautomations#{DataGeneratorUtil.get_random_number}@gmail.com")
  @driver.find_element(:name, "phone").send_keys("9055438#{DataGeneratorUtil.get_random_number}")
  @driver.find_element(:css, ".btn-outline-primary.book-room").click
  sleep 3

end

