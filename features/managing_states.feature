Feature: Managing states
  In order to change information about a state
  As an admin
  I want to be able to set a state's name and default status

  Background:
    Given I have run the seed task
    And there are the following users:
      | email              | password | admin | 
      | admin@ticketee.com | password | true  |
    And I am signed in as them

  Scenario: Marking a state as default
    Given I am on the homepage
    When I follow "Admin"
    And I follow "States"
    And I follow "Make default" for the "New" state
    Then I should see "New is now the default state."