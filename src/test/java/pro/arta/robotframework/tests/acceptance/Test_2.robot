*** Settings ***

Library  Selenium2Library

Test Setup  Open test browser
Test Teardown  Close test browser

*** Variables ***

${LOGIN_FAIL_MSG}  Incorrect username or password.

*** Test Cases ***

Incorrect username or password
    [Tags]  Login
    Go to  https://saucelabs.com/login

    Page should contain element  id=username
    Page should contain element  id=password4332

    Input text  id=username  anonymous
    Input text  id=password  secret

    Click button  id=submit

    Page should contain  ${LOGIN_FAIL_MSG}

*** Keywords ***

Open test browser
    Open browser  about:

Close test browser
    Close all browsers