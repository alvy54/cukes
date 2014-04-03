#encoding: utf-8

Feature: Header links
  In order to go to a certain section of the site
  As a user
  I need to click on one of the header links
  
  Scenario: Click on "Rent" header link
  	Given the "Rent" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Invest" header link
  	Given the "Invest" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Sold" header link
  	Given the "Sold" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Share" header link
  	Given the "Share" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "New homes" header link
    Given the "New homes" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Retire" header link
  	Given the "Retire" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Find agents" header link
  	Given the "Find agents" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Home ideas" header link
    Given the "Home ideas" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Blog" header link
  	Given the "Blog" header link 
    When I click on it
    Then I end up on the correct landing page

  Scenario: Click on "Commercial" header link
    Given the "Commercial" header link 
    When I click on it
    Then I end up on the correct landing page
  