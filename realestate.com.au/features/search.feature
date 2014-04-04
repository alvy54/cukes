#encoding: utf-8

Feature: Search
  In order to search for properties
  As a user
  I need to enter search criteria to perform the search
  
  Scenario: Enter state, suburb, property type, and max price and perform the search
    Given the following search criteria:
    | State         | VIC       |
    | Suburb        | Richmond  |
    | Property Type | Apartment |
    | Max Price     | 500,000   |
    When I click on search
    Then I get listing numbers in the results
    And I get results in the State and Suburb I specified
  
