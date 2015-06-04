require 'rspec/expectations'
require 'capybara/cucumber'
#require 'capybara-webkit'
require 'capybara/poltergeist'
require 'httparty'
require 'base64'

#Capybara.register_driver :webkit_ignore_ssl do |app|
#  Capybara::Webkit::Driver.new(app).tap {|d| d.browser.ignore_ssl_errors }
#end

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app,:timeout => 15,:phantomjs_options => ['--load-images=no', '--ignore-ssl-errors=yes'],:window_size => [1440, 900],:js_errors => false)
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.register_driver :selenium_safari do |app|
  Capybara::Selenium::Driver.new(app, :browser => :safari)
end

#Capybara.default_driver = :webkit
#Capybara.default_driver = :webkit_ignore_ssl
#Capybara.default_driver = :selenium
Capybara.default_driver = :selenium_chrome
#Capybara.default_driver = :selenium_safari
#Capybara.default_driver = :poltergeist

Capybara.default_selector = :css
Capybara.default_wait_time = 15
#Capybara.configure do |config|
#  config.ignore_hidden_elements = false
#  config.visible_text_only = true
#end

$host = ENV['host']
$host ||= 'http://todomvc.com'
Capybara.app_host = $host

require 'test/unit/assertions'
World(Test::Unit::Assertions)
