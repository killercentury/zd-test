@clear-local-storage
Feature: Complete all todo items
  
  In order to mark all todo items as completed
  As an user
  I want to complete all active todos by clicking the down arrow at the top-left of the UI

  Scenario: An user completes all todo items
    Given I am on the TodoMVC Ember.js page
    And I have added multiple todo items
    When I complete all todo items
    Then I should see all my todo items have been completed
