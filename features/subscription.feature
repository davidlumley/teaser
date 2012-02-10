Feature: User Subscription
  In order to keep informed with updates
  As a user
  I want to be able to enter my email and receive updates
  
  Scenario: Valid email address
    Given I am on the homepage
    When I fill in "email" with "djlumley@gmail.com"
    When I press "submit"
    Then I should see "Thanks for subscribing"
  
  Scenario: Invalid email address
    Given I am on the homepage
    When I fill in "email" with "djlumley"
    When I press "submit"
    Then I should see "Your email address was invalid"