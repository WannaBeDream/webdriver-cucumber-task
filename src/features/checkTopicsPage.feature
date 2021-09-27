Feature: Github test topics page
    As a Developer in Test
    I want to go to topics page from main page 

    Scenario: open main page
        Given I open the url "https://github.com/"
        Then  I expect the url to contain "github.com"
        And   I expect that the title is "GitHub: Where the world builds software · GitHub"

    Scenario: click on an explore link should navigate to explore page
        When  I click on the element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Explore')]"
        And   I pause for 1000ms
        When  I click on the element "//a[@href='/explore']"
        And   I pause for 1000ms
        Then  I expect the url to contain "https://github.com/explore"

    Scenario: click on the topics link and check for text matches
        When  I click on the element "nav[aria-label='Explore navigation']  a[href='/topics']"
        And   I pause for 1000ms
        Given I expect that element ".h1" matches the text "Topics"
        And   I pause for 1000ms
