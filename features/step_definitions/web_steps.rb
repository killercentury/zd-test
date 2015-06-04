# These step definitions are directly mapping to the Capybara API
# They only help you to start writing some simple imprerative tests
# But for complex tests, please consider to use Capybara API directly

# Navigation

When /^(?:|I )go to "([^"]*)"$/ do |url|
  visit url
end

When /^(?:|I )refresh the page$/ do
  visit(current_url)
end

# Actions

When /^(?:|I )press "([^"]*)"$/ do |button|
  click_button(button)
end

When /^(?:|I )follow "([^"]*)"$/ do |link|
  click_link(link)
end

When /^(?:|I )click on "([^"]*)"$/ do |link_or_button|
  click_on(link_or_button)
end

When /^(?:|I )click on the first "([^"]*)"$/ do |link_or_button|
  click_on(link_or_button, :match => :first)
end

When /^(?:|I )fill in "([^"]*)" with "([^"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^(?:|I )fill in "([^"]*)" for "([^"]*)"$/ do |value, field|
  fill_in(field, :with => value)
end

When /^(?:|I )select "([^"]*)" from "([^"]*)"$/ do |value, field|
  select(value, :from => field)
end

When /^(?:|I )check "([^"]*)"$/ do |field|
  check(field)
end

When /^(?:|I )uncheck "([^"]*)"$/ do |field|
  uncheck(field)
end

When /^(?:|I )choose "([^"]*)"$/ do |field|
  choose(field)
end

When /^(?:|I )attach the file "([^"]*)" to "([^"]*)"$/ do |path, field|
  attach_file(field, File.expand_path(path))
end

# Matchers

Then /^(?:|I )should see "([^"]*)"$/ do |text|
  expect(page).to have_content(text)
end

Then /^(?:|I )should not see "([^"]*)"$/ do |text|
  expect(page).to have_no_content(text)
end

Then /^(?:|I )should find "([^"]*)"$/ do |locator|
  page.should have_selector(locator)
end

Then /^(?:|I )should not find "([^"]*)"$/ do |locator|
  page.should have_no_selector(locator)
end

Then /^(?:|I )should find "([^"]*)" visible$/ do |locator|
  expect(page).to have_selector(locator, :visible => true)
end

Then /^(?:|I )should find "([^"]*)" invisible$/ do |locator|
  expect(page).to have_selector(locator, :visible => false)
end

Then /^the "([^"]*)" option should be selected for "([^"]*)" select box$/ do |text, locator|
  expect(page).to have_select(locator, :selected => text)
end

Then /^the "([^"]*)" should be selected with "([^"]*)"/ do |locator, text|
  expect(page).to have_select(locator, :selected => text)
end

Then /^the "([^"]*)" checkbox should be checked$/ do |label|
  field_checked = find_field(label)['checked']
  expect(field_checked).to be_truthy
end

Then /^the "([^"]*)" checkbox should not be checked$/ do |label|
  field_checked = find_field(label)['checked']
  expect(field_checked).to be_falsey
end

# Helpers

Then /^(?:|I )wait (\d+) seconds?$/ do |seconds|
  sleep seconds.to_i
end

Then /^show me the page$/ do
  save_and_open_page
end
