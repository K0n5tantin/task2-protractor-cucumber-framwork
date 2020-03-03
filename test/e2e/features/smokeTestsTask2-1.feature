@all
Feature: westerndigital.com tests

  @wdstore_first_test
  Scenario: Verify user can open menu
    Given I open "https://shop.westerndigital.com/" url
    When I maximize page
      And I wait until "WDS Menu" is present
    Then Text of "WDS Menu" should contain "SHOP"
      And I wait "2" seconds
    
    When I hover "WDS Menu Item SHOP"
      And I wait until "WDS Menu Sublists Products" is present
    Then "WDS Menu Sublists Products" should be visible
      And Count of "WDS Menu Sublists Products Row" should be "4"
      And I wait "2" seconds

    When I hover "WDS Menu Sublists Products Row All Brands"
      And I wait until "WDS Menu Item Wrap All Brands" is present
      And I highlight "WDS Menu Item Wrap All Brands"
    Then "WDS Menu Item Wrap All Brands" should be visible
      And I wait "2" seconds

    When I hover "WDS Menu Sublists Products Row WD"
      And I wait until "WDS Menu Item Wrap WD" is present
      And I highlight "WDS Menu Item Wrap WD"
    Then "WDS Menu Item Wrap WD" should be visible
      And I wait "2" seconds

    When I hover "WDS Menu Sublists Products Row SanDisk"
      And I wait until "WDS Menu Item Wrap SanDisk" is present
      And I highlight "WDS Menu Item Wrap SanDisk"
    Then "WDS Menu Item Wrap SanDisk" should be visible
      And I wait "2" seconds

    When I hover "WDS Menu Sublists Products Row GTechnology"
      And I wait until "WDS Menu Item Wrap GTechnology" is present
      And I highlight "WDS Menu Item Wrap GTechnology"
    Then "WDS Menu Item Wrap GTechnology" should be visible
      And I wait "2" seconds
