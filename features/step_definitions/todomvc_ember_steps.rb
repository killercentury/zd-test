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
  expect(page).to have_content('A framework for creating ambitious web applications.')
end

When /^(?:|I )add a todo item$/ do
  fill_in("new-todo", :with => 'clean my room')
  find('#new-todo').native.send_keys(:return)
end

When /^(?:|I )should see my todo item being list$/ do
  within('#todo-list') do
    expect(page).to have_content('clean my room')
  end
end


