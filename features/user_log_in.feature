Feature: Log in page
Scenario: user can log in
  Given I am existing user
  When I visit log in page
  And I fill in correct information
  Then I can log in

 Scenario:user can log out
      Given am a logged in users
      Then I can log out