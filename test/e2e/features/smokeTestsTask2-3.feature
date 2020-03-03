@all
Feature: westerndigital.com tests

  @wdstores_third_test
  Scenario Outline: Verifying footer links <>
    Given I open "https://shop.westerndigital.com" url 
    When I maximize page
    When I hover "WDS footer"
      And I wait until "WDS footer" is present

    Then "<Link>" should be visible
    When I click "<Link>"
      And I wait "2" seconds
    Then URL page should be "<Url>"
       
  Examples:
  | Link                     | Url                                               |
  | Order Status             | https://shop.westerndigital.com/store/orderStatus |     
  | Shopping FAQ             | https://shop.westerndigital.com/shopping-faq      |
  | Return Policy            | https://shop.westerndigital.com/return-policy     | 
  | Warranty Policy          | https://shop.westerndigital.com/warranty          |
   
