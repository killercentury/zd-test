Feature: Clear a single todo item
  
  In order to clear a single todo item from the list completely
  As an user
  I want to do it by clicking the Close icon

  Scenario: An user filters completed todo items
    Given I am on the TodoMVC Ember.js page
    And I have added a todo item
    When I click on the close icon
    Then I should see my todo item has gone
