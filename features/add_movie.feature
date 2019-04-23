Feature: add a new movie

  As a user
  I want to contribute easily to the community
  I want to be able to add a new movie entry

  Scenario: I want to be able to add a movie to the database
    Given  I am on the Movies page
    When I click on the "DONT SEE A MOVIE? ADD ONE HERE!" link
    Then I should be on the "New Movies" page
    When I click on the "Save Movie" button
    Then I should be on the "Post a review" page