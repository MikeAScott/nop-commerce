Feature: Search for stuff

  Scenario: User can search for something
    Given I am on the homepage
    When I search for "Camera"
    Then I expect to see a list of "Camera"


  Scenario: Receive message if nothing is found
    Given I am on the homepage
    When I search for "Elephants"
    Then I expect to see a message "No products were found that matched your criteria."