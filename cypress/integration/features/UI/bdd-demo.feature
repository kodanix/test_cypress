Feature: Visiting CooSpace and testing it
  @test
  Scenario: Visting coospace web page
    Given I navigate to coospace
    Then I verify title of web page as 'Bejelentkezés - SZTE CooSpace'

  @test
  Scenario: Changing page language to English
    Given I navigate to coospace
    And I click the EN button
    Then I verify the url of web page as 'https://www.coosp.etr.u-szeged.hu/?_lang=en'

  @test
  Scenario: Changing page language to German
    Given I navigate to coospace
    And I click the DE button
    Then I verify the url of web page as 'https://www.coosp.etr.u-szeged.hu/?_lang=de'

  @test
  Scenario: Changing page language back to Hungarian
    Given I navigate to coospace
    And I click the DE button
    And I click the HU button
    Then I verify the url of web page as 'https://www.coosp.etr.u-szeged.hu/?_lang=hu'

  @test
  Scenario: Login to coospace
    Given I navigate to coospace
    And I submit my Neptun code and password and click on login
    Then Validate the page url as 'https://www.coosp.etr.u-szeged.hu/Home'

  @test
  Scenario: Login to coospace and checking calendar
    Given I navigate to coospace
    And I submit my Neptun code and password and click on login
    And I click on the calendar menu
    Then Validate the page url as 'https://www.coosp.etr.u-szeged.hu/Calendar?view=4'

  @test
  Scenario: Checking the search button if it works
    Given I navigate to coospace
    And I submit my Neptun code and password and click on login
    And Type in the search input
    Then Validate the page url as 'https://www.coosp.etr.u-szeged.hu/Search?Mode=&query=Kov%C3%A1cs+D%C3%A1niel'
