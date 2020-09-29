Given('Go to the login page') do
  @driver = Selenium::WebDriver.for :firefox
  @driver.get 'http://the-internet.herokuapp.com/login'
end

When('Fill in username: {string}') do |string|
  @user = string
  @driver.find_element(:id, 'username').send_keys(@user)
end

When('Enter password: {string}') do |string|
  @pw = string
  @driver.find_element(:id, 'password').send_keys(@pw)
end

When('Press Login') do
  @driver.find_element(:xpath, "//i[contains(text(),'Login')]").click
end

Then('{string} should appear') do |string|
  @msg = string
  expect(@driver.find_element(:id, 'flash').text).to include(@msg)
  @driver.quit
end
#push test