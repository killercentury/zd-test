@clear-local-storage
Feature: Filter todo items
  
  In order to filter todo items
  As an user
  I want to filter the visible todos by Completed state

  Scenario: An user filters completed todo items
    Given I am on the TodoMVC Ember.js page
    And I have added multiple todo items
    And I complete all todo items
    When I click on the completed filter
    Then I should see all my completed items
