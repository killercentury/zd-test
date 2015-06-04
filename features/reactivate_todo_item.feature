Feature: Re-activate a todo item
  
  In order to cancel complete action
  As an user
  I want to re-activate a completed todo by clicking inside the circle UI

  Scenario: An user re-activates a todo item
    Given I am on the TodoMVC Ember.js page
    And I have a completed todo item
    When I re-activate a todo item
    Then I should see my todo item has been re-activated
