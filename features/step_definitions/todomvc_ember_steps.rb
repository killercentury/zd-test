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

Then /^(?:|I )should see my todo item being list$/ do
  within('#todo-list') do
    expect(page).to have_content('clean my room')
  end
end

And /^(?:|I )have added a todo item$/ do
  fill_in("new-todo", :with => 'clean my room')
  find('#new-todo').native.send_keys(:return)
  within('#todo-list') do
    expect(page).to have_content('clean my room')
  end
end

When /^(?:|I )edit a todo item$/ do
  within('#todo-list') do
    first('li').double_click
    first('li.editing input').set('clean my car')
    first('li.editing input').native.send_keys(:return)
  end
end

Then /^(?:|I )should see my todo item has been updated$/ do
  within('#todo-list') do
    expect(page).to have_content('clean my car')
  end
end

When /^(?:|I )complete a todo item$/ do
  within('#todo-list') do
    first('li input.ember-checkbox').click
  end
end

Then /^(?:|I )should see my todo item is completed$/ do
  within('#todo-list') do
    expect(page).to have_selector('li.completed')
  end
end

And /^(?:|I )have a completed todo item$/ do
  fill_in("new-todo", :with => 'clean my room')
  find('#new-todo').native.send_keys(:return)
  within('#todo-list') do
    expect(page).to have_content('clean my room')
    first('li input.ember-checkbox').click
    expect(page).to have_selector('li.completed')
  end
end

When /^(?:|I )re-activate a todo item$/ do
  within('#todo-list') do
    first('li.completed input.ember-checkbox').click
  end
end

Then /^(?:|I )should see my todo item has been re-activated$/ do
  within('#todo-list') do
    expect(page).to have_no_selector('li.completed')
    expect(page).to have_selector('li')
  end
end

When /^(?:|I )add a second todo item$/ do
  fill_in("new-todo", :with => 'buy a cake')
  find('#new-todo').native.send_keys(:return)
end

Then /^(?:|I )should see my second todo item being list$/ do
  within('#todo-list') do
    expect(page).to have_content('buy a cake')
  end
end
