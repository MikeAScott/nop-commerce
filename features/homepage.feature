Feature: Homepage Navigation

  Scenario: Anonymous users can open the homepage
    When I visit the Nop Commerce Site
    Then I expect to see "Welcome to our store"

  Scenario: Users can view the sitemap
    Given I am on the homepage
    When I click the "Sitemap" link
    Then I expect to be on the "Sitemap" page

  Scenario Outline: Users can select categories
    Given I am on the homepage
    When I click the <category> category
    Then I expect to be on the <category> page
  Examples:
    | category    |
    | Books       |
    | Computers   |
    | Electronics |


