Feature: Github test sign up
    As a Developer in Test
    I want to see a fail registration flow with valid data but without captcha

    Scenario: open URL
        Given I open the url "https://github.com/"
        Then  I expect the url to contain "github.com"
        And   I expect that the title is "GitHub: Where the world builds software · GitHub"

    Scenario: Single click on a link should navigate to sign in page
        When  I click on the link "Sign up"
        Then  I expect the url to contain "https://github.com/signup"

    Scenario: Waiting for displaying inputs
        Given the element "#email" is not displayed
        Then  I wait on element "#email" for 3000ms to be displayed

    Scenario: Fill the email input with valid data
        When  I set "KukarekuGav@gmail.com" to the inputfield "#email"
        And   I pause for 1000ms
        Then  I expect that element "//*[@data-continue-to='password-container']" is enabled
        And   I pause for 1000ms

    Scenario: Fill the password input with valid data
        When  I click on the button "//*[@data-continue-to='password-container']"
        And   I pause for 1000ms
        Then  I expect that element "#password" is displayed
        And   I pause for 1000ms
        When  I set "qwfsfFSDF213" to the inputfield "#password"
        And   I pause for 1000ms

    Scenario: Fill the username input with valid data
        When  I click on the button "//*[@data-continue-to='username-container']"
        And   I pause for 1000ms
        Then  I wait on element "#login" for 2000ms to be displayed
        And   I pause for 1000ms
        Then  I expect that element "#login" is displayed
        And   I pause for 1000ms
        When  I set "NagibatorCoda228" to the inputfield "#login"
        And   I pause for 1000ms

    Scenario: Fill the updates textarea with data
        When  I click on the button "//*[@data-continue-to='opt-in-container']"
        And   I pause for 1000ms
        Then  I expect that element "#opt_in" is displayed
        And   I pause for 1000ms
        When  I set "Bla bla bla" to the inputfield "#opt_in"
        And   I pause for 1000ms

