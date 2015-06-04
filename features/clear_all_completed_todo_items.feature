Feature: Clear all completed todo items
  
  In order to clear all completed todo items from the list completely
  As an user
  I want to do it by clicking the "Clear completed" button

  Scenario: An user clears all completed todo items
    Given I am on the TodoMVC Ember.js page
    And I have added multiple todo items
    And I complete all todo items
    When I click on the clear completed button
    Then I should see my completed todo items have gone
