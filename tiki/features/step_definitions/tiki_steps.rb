Given('Open firefox\/chrome and go to tiki homepage') do
    @driver = Selenium::WebDriver.for :firefox
    @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    @driver.get 'https://tiki.vn'
  end
  
  When('Search {string} and press {string}') do |string, string2|
    @driver.find_element(:css, 'input[type="text"]') .send_keys(string)
    @driver.find_element(:css, 'button>i.tikicon').click
    end
  
  Then('Total results: {string} should appear') do |string|
    Kernel.puts string
    expect(@driver.find_element(:css, 'h4[name="results-count-with-execution-time"]')).to include(@total_results)
    @driver.quit
  end