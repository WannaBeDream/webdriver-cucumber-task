Feature: Github test sign out
    As a Developer in Test
    I want to test if the github.com profile screen displays sign out

    Scenario: sign in from main page
        Given I open the url "https://github.com"
        Then  I wait on element "a[href='/login']" for 2000ms to be displayed
        And   I pause for 1000ms
        When  I click on the link "Sign in"
        And   I pause for 1000ms
        When  I set "GalyaPulemet" to the inputfield "#login_field"
        And   I pause for 1000ms
        When  I set "Qwerty228Qwerty228" to the inputfield "#password"
        And   I pause for 1000ms
        When  I click on the element "input[value='Sign in']"
        And   I pause for 1000ms

    Scenario: sign out from profile page
        Then  I wait on element "//*[@aria-label='View profile and more']" for 1000ms to exist
        When  I click on the element "//*[@aria-label='View profile and more']"
        And   I pause for 1000ms
        When  I click on the element "//*[@class='dropdown-item dropdown-signout']"
        And   I pause for 1000ms
