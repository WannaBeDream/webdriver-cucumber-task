Feature: Github test search input
    As a Developer in Test
    I want to search webdriver repository and filter by typescipt 

    Scenario: go to main page and type webdriverio in search input
        Given I open the url "https://github.com"
        Then  I wait on element "//input[@placeholder='Search GitHub']" for 2000ms to be displayed
        And   I pause for 1000ms
        When  I click on the element "//input[@placeholder='Search GitHub']"
        And   I pause for 1000ms
        When  I set "webdriverio" to the inputfield "//input[@placeholder='Search GitHub']"
        When  I press "Enter"
        And   I pause for 2000ms

    Scenario: filter by typescipt 
        Then  I expect that the url is "https://github.com/search?q=webdriverio&type="
        When  I click on the element "a[href='/search?l=TypeScript&q=webdriverio&type=Repositories']"
        And   I pause for 1000ms
        When  I scroll to element "//ul[contains(@class,'repo-list')]//a[@href='/webdriverio/webdriverio']"
        And   I pause for 1000ms
        When  I click on the element "//ul[contains(@class,'repo-list')]//a[@href='/webdriverio/webdriverio']"
        And   I pause for 1000ms
        Then  I expect that the path is "/webdriverio/webdriverio"
        And   I pause for 1000ms
        
      