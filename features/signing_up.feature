Feature: Signing up
  In order to be attributed for my work
  As a user
  I want to be able to sign up

  Scenario: Signing up
    Given I am on the homepage
    When I follow "Sign up"
    And I fill in "Email" with "user@ticketee.com"
    And I fill in "Password" with "password"
    And I fill in "Password confirmation" with "password"
    And I press "Sign up"
    Then I should see "You have signed up successfully."
    Then I should see "Please confirm your account before signing in."

  Scenario: Signing in via confirmation
    Given there are the following users:
      | email | password | unconfirmed |
      | user@ticketee.com | password | true |
    And "user@ticketee.com" opens the email with subject "Confirmation instructions"
    And they click the first link in the email
    Then I should see "Your account was successfully confirmed"
    And I should see "Signed in as user@ticketee.com"

  Scenario: Signing in via form
    Given there are the following users:
      | email | password |
      | user@ticketee.com | password |
    And I am signed in as them
