Feature: Search on Google

  Scenario: Search for bananas
    Given I am on the home page for bananas
    And I press next
    Then I should see "Page 2 of about"
