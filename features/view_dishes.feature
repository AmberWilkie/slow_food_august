Feature: As a Customer
  in order to choose my dinner
  I must be able to view multiple dishes.

Scenario: I try to view the dishes on the Menu page
  Given I am on the "home page"
  Then I should see "Menu"
  When I click on the "Menu" link
  Then I should be on the menu page
  And I should see "Menu"
  And I should see "Cinnamon Rolls"
  And I should see 90
  And I should see "olives"
  And I should see 30
  And I should see "sandwich"
  And I should see 80
