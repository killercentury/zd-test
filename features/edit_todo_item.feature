Feature: Edit a todo item
  
  In order to update or fix my todo item
  As an user
  I want to edit the content of an existing todo item

  Scenario: An user edits a todo item
    Given I am on the TodoMVC Ember.js page
    And I have added a todo item
    When I edit a todo item
    Then I should see my todo item has been updated
