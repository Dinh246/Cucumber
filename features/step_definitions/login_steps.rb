Given('go to the login page') do  
  $driver.get 'http://the-internet.herokuapp.com/login'
end

When('fill in username: {string} & password: {string} and press login') do |string, string2|
  $driver.find_element(:css, '#username').send_keys(string)
  $driver.find_element(:css, '#password').send_keys(string2)
  $driver.find_element(:css, 'i.fa').click
end

Then('{string} should appear') do |string|
  @msg = $driver.find_element(:css, '#flash').text
  expect(@msg).to include(string)
end