Feature: Add a second todo item
  
  In order to log another to be done
  As an user
  I want to add a second todo item

  Scenario: An user adds a second todo item
    Given I am on the TodoMVC Ember.js page
    And I have added a todo item
    When I add a second todo item
    Then I should see my second todo item being list
