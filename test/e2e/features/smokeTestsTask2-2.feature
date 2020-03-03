@all
Feature: westerndigital.com tests

  @wdstore_second_test
  Scenario: Verify search and filter by
    Given I open "https://shop.westerndigital.com/" url
    When I maximize page
      And I wait until "WDS Search Button" is present
    Then "WDS Search Button" should be visible
      And I wait "2" seconds
    
    When I click "WDS Search Button"
      And "WDS Search Input" should be visible
      And I input "mp3" in "WDS Search Input"
    Then URL page should be "https://shop.westerndigital.com/search?q=mp3"
    When I wait until "WDS Knowledge Base button" is present
    Then "WDS Knowledge Base button" should be visible
    And I wait "2" seconds
    When I click "WDS Knowledge Base button"
      And I wait until "WDS Link List" is present
    Then "WDS Link List" should be visible
      And Count of "WDS Link List" should be "2"




