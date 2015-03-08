require 'capybara'
require 'capybara/cucumber'

Capybara.register_driver :selenium do |app|
  #Capybara::Selenium::Driver.new(app, :browser => :chrome, :args => ["–-window-size=250,250"])
  Capybara::Selenium::Driver.new(app,
    browser: :chrome,
    desired_capabilities: {
      "chromeOptions" => {
        "args" => %w{ window-size=300,300 }
      }
    }
  )
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'http://www.google.com'
end

World(Capybara)