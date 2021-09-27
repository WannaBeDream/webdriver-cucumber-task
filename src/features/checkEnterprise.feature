Feature: Github test enterprise
    As a Developer in Test
    I want to test the github.com flow of transitions between main page, enterpise.

    Scenario: should visit enterprise's pages from main page
        Given I open the url "https://github.com"
        When  I click on the element "//a[@href='/enterprise' and @class='HeaderMenu-link no-underline py-3 d-block d-lg-inline-block']"
        Then  I wait on element "a[href='/organizations/enterprise_plan?ref_cta=Start+a+free+trial&ref_loc=hero&ref_page=%2Fenterprise']" for 2000ms to be displayed
   
    Scenario: should click start free trial link and move to pick trial plan page
        When  I click on the element "a[href='/organizations/enterprise_plan?ref_cta=Start+a+free+trial&ref_loc=hero&ref_page=%2Fenterprise']"
        Then  I wait on element "a[href='https://github.com/join?plan=business_plus&ref_cta=Start+a+free+trial&ref_loc=hero&ref_page=%2Fenterprise&setup_organization=true']" for 2000ms to be displayed
   
    Scenario: should click on enterpise cloud element
        When  I click on the element "a[href='https://github.com/join?plan=business_plus&ref_cta=Start+a+free+trial&ref_loc=hero&ref_page=%2Fenterprise&setup_organization=true']"
        Then  I wait on element "#user_login" for 2000ms to be displayed
        
    Scenario: should fill all inputs with some data
        When  I set "Abracabradsa212" to the inputfield "#user_login"
        And   I pause for 1000ms
        When  I set "Abraasdsa213@gmail.com" to the inputfield "#user_email"
        And   I pause for 1000ms
        When  I scroll to element "#user_password"
        And   I pause for 1000ms
        When  I set "Kukareku33342" to the inputfield "#user_password"
        And   I pause for 1000ms
        When  I scroll to element "#signup_button"
        And   I pause for 1000ms
        Then  I expect that element "#signup_button" is displayed
        And   I pause for 1000ms

    Scenario: should go to previus page
        Given I go to previus page
        And   I pause for 1000ms

    Scenario: should click on enterprise server element
        When  I click on the element "a[href='https://enterprise.github.com/trial?ref_cta=Start+a+free+trial&ref_loc=hero&ref_page=%2Fenterprise&source=pricing-card-enterprise']"
        And   I pause for 1000ms
        Then  I wait on element "#contact_request_name" for 1000ms to be displayed

    Scenario: should fill all inputs with some data and checkboxes
        When  I set "MacheteEsemesit" to the inputfield "#contact_request_name"
        And   I pause for 1000ms
        When  I set "RogaAndKopita enc." to the inputfield "#contact_request_organization_name"
        And   I pause for 1000ms
        When  I set "Dreammillo2@gmail.com" to the inputfield "#contact_request_email"
        And   I pause for 1000ms
        When  I set "3280 3213 1233 1233" to the inputfield "#contact_request_phone"
        And   I pause for 1000ms
        When  I click on the element "#contact_request_instance_type_aws"
        And   I pause for 1000ms
        When  I click on the element "#questions_yes"
        And   I pause for 1000ms
        Then  I expect that element "#questions-list" is displayed
        And   I pause for 1000ms
        When  I scroll to element "#questions-list"
        When  I set "EWFfewfewfwefwefwecsdcewcwewecwe" to the inputfield "#questions-list"
        And   I pause for 1000ms
        When  I scroll to element "#contact_request_agreed_to_terms"
        And   I pause for 1000ms
        When  I click on the element "#contact_request_agreed_to_terms"
        And   I pause for 1000ms
