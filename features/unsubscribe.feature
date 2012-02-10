Feature: User Unsubscription
  In order to stop receiving updates
  As a user
  I want to be able to cancel my subscription via URL
  
  Scenario: Valid email address
    Given I am on a valid unsubscribe URL
    Then I should see "testemail@testemail.com has been unsubscribed"
  
  Scenario: Invalid email address
    Given I am on an invalid unsubscribe URL
    Then I should see "testemail is an invalid email address"