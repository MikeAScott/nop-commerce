Feature: Homepage Navigation

Scenario: Anonymous users can open the homepage
  When I visit the Nop Commerce Site
  Then I expect to see "Welcome to our store"

Scenario: Users can view the sitemap
    Given I am on the homepage
    When I click the "Sitemap" link
    Then I expect to see "Sitemap"

Scenario: User can search for something
  Given I am on the homepage
  When I search for "Cameras"
  Then I expect to see a list of "Camera"


