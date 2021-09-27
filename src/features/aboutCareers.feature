Feature: Github test aboutCareers
    As a Developer in Test
    I want to see all github careers offers into console

    Scenario: should go to about careers page
        Given I open the url "https://github.com"
        Then  I wait on element "a[href='/about/careers']" for 1000ms to be displayed
        When  I scroll to element "a[href='/about/careers']"
        When  I click on the element "a[href='/about/careers']"
       
    Scenario: should see positions city list 
        Then  I wait on element "a[href='#positions']" for 1000ms to exist
        When  I click on the element "a[href='#positions']"
        And   I pause for 1000ms

    Scenario: should print positions list to console 
        Given Print text of "//div[1]/div/button/h3" to console
        Given Print text of "//div[2]/div/button/h3" to console
        Given Print text of "//div[3]/div/button/h3" to console
        Given Print text of "//div[4]/div/button/h3" to console
        Given Print text of "//div[5]/div/button/h3" to console
        Given Print text of "//div[6]/div/button/h3" to console
        And   I pause for 1000ms


