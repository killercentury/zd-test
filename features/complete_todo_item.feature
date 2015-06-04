@clear-local-storage
Feature: Complete a todo item
  
  In order to remind me of done item
  As an user
  I want to complete a todo by clicking inside the circle UI to the left of the Todo

  Scenario: An user completes a todo item
    Given I am on the TodoMVC Ember.js page
    And I have added a todo item
    When I complete a todo item
    Then I should see my todo item is completed
