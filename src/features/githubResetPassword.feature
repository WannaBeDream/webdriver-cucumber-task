Feature: Github test reset password
    As a Developer in Test
    I want to reset profile password 

    Scenario: go to sign in page and click on forgot password link
        Given I open the url "https://github.com"
        Then  I wait on element "a[href='/login']" for 2000ms to be displayed
        And   I pause for 1000ms
        When  I click on the link "Sign in"
        And   I pause for 1000ms
        When  I click on the link "Forgot password?"
        And   I pause for 1000ms

    Scenario: fill email input and check reset button 
        When  I set "GalyaPulemet@gmail.com" to the inputfield "#email_field"
        And   I pause for 1000ms
        Then  I expect that element "//input[@value='Send password reset email']" contains the text "Send password reset email"
        And   I pause for 1000ms
