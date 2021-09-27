Feature: Github test sign up with pricing
    As a Developer in Test
    I want to see a fail registration flow across 
     page with valid data but without captcha

    Scenario: open URL
        Given I open the url "https://github.com/"
        Then  I expect the url to contain "github.com"
        And   I expect that the title is "GitHub: Where the world builds software · GitHub"

    Scenario: Single click on a pop-up should show plans link
        When  I click on the element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Pricing')]"
        When  I click on the element "//*[@class='HeaderMenu-summary HeaderMenu-link px-0 py-3 border-0 no-wrap d-block d-lg-inline-block' and contains(text(),'Pricing')]"
        And   I pause for 1000ms
        Then  I expect that element "//a[@href='/pricing' and contains(text(),'Plans')]" is displayed
        And   I pause for 1000ms

    Scenario: Single click on a plans link should navigate to pricing page
        When  I click on the element "//a[@href='/pricing' and contains(text(),'Plans')]"
        And   I pause for 1000ms
        Then  I expect that the url is "https://github.com/pricing"

    Scenario: Single click on a join button should navigate to sign up page
        When  I scroll to element "//a[@href='/join?plan=free&ref_cta=Join%2520for%2520free&ref_loc=cards&ref_page=%2Fpricing&source=pricing-card-free']"
        And   I pause for 1000ms
        Then  I click on the element "//a[@href='/join?plan=free&ref_cta=Join%2520for%2520free&ref_loc=cards&ref_page=%2Fpricing&source=pricing-card-free']"
        And   I pause for 2000ms

    Scenario: Should set user login input with some data and check 
        When  I scroll to element "#user_login"
        And   I pause for 1000ms
        When  I set "AbracadabraUhaha" to the inputfield "#user_login"
        And   I pause for 1000ms
        Then  I expect that element "#user_login" contains the text "AbracadabraUhaha"
   
    Scenario: Should set user email input with some data and check 
        When  I scroll to element "#user_email"
        And   I pause for 1000ms
        When  I set "uhahaha@gmail.com" to the inputfield "#user_email"
        And   I pause for 1000ms
        Then  I expect that element "#user_email" contains the text "uhahaha@gmail.com"
   
    Scenario: Should set user password input with some data and check 
        When  I scroll to element "#user_password"
        And   I pause for 1000ms
        When  I set "Kukareku123" to the inputfield "#user_password"
        And   I pause for 1000ms
        Then  I expect that element "#user_password" contains the text "Kukareku123"
   
    Scenario: Single click on a checkbox must choose positive option
        When  I scroll to element ".form-checkbox"
        And   I pause for 1000ms
        Then  I click on the element ".form-checkbox"
        And   I pause for 1000ms