Given /^(?:|I )am an user$/ do
  # empty for now
end

Given /^(?:|I )am on the TodoMVC homepage$/ do
  visit '/'
end

Given /^(?:|I )am on the TodoMVC Ember.js page$/ do
  visit '/examples/emberjs/'
  #visit '/'
  #expect(page).to have_content('TodoMVC')
  #if Capybara.current_driver != :poltergeist
  #  click_link('Ember.js')
  #else
  #  find_link("Ember.js").trigger("click")
  #end
end
