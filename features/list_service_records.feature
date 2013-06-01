Feature: List service records

  In order to see maintenance history for my car
  As a car owner
  I want to view a list of service records

  Scenario: Display list of service records
    Given car service records exist
    When the user browses to the index page
    Then all service records should be listed

