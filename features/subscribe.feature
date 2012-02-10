Feature: User Subscription
  In order to keep informed with updates
  As a user
  I want to be able to enter my email and receive updates
  
  Scenario: Valid email address
    Given I am on the homepage
    When I fill in "email" with "testemail@testemail.com"
    When I press "submit"
    Then I should see "Thanks for subscribing"
  
  Scenario: Invalid email address
    Given I am on the homepage
    When I fill in "email" with "testemail"
    When I press "submit"
    Then I should see "testemail is an invalid email address"