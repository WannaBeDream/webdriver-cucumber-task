Feature: Github test popups
    As a Developer in Test
    I want toogle popups

    Scenario: open main page
        Given I open the url "https://github.com/"
        Then  I expect the url to contain "github.com"
        And   I expect that the title is "GitHub: Where the world builds software · GitHub"

    Scenario: move mouse to whygithub element on popup 
        When  I move to element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Why GitHub?')]"
        And   I pause for 1000ms
        Then  I expect that element ".dropdown-menu a[href='/features']" becomes displayed
        And   I pause for 1000ms
        When  I move to element "a[href='/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home']:last-child"
        And   I pause for 1000ms

    Scenario: move mouse to explore element on popup 
        When  I move to element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Explore')]"
        And   I pause for 1000ms
        Then  I expect that element "//a[@href='/explore']" becomes displayed
        And   I pause for 1000ms
        When  I move to element "a[href='/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home']:last-child"
        And   I pause for 1000ms

    Scenario: move mouse to pricing element on popup 
        When  I move to element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Pricing')]"
        And   I pause for 1000ms
        Then  I expect that element "//a[@href='/pricing']" becomes displayed
        And   I pause for 1000ms
        When  I move to element "a[href='/signup?ref_cta=Sign+up&ref_loc=header+logged+out&ref_page=%2F&source=header-home']:last-child"
        And   I pause for 1000ms