@clear-local-storage
Feature: Add a todo item
  
  In order to remember what needs to be done
  As an user
  I want to add a todo item

  Scenario: An user adds a todo item
    Given I am on the TodoMVC Ember.js page
    When I add a todo item
    Then I should see my todo item being list
