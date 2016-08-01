*** Settings ***
Documentation               This is just a tutorial
...
Metadata                    VERSION     0.1
Library                     Selenium2Library
Suite Setup                 Start Browser
Suite Teardown              Close Browser


*** Variables ***
${SERVER}                   https://www.google.ch
${BROWSER}                  firefox

*** Keywords ***
Start Browser
    [Documentation]         Start firefox browser on Selenium Grid
    Open Browser            ${SERVER}   ${BROWSER}   None  http://192.168.0.176:4444/wd/hub

*** Test Cases ***
Check something
    [Documentation]         Check the page title
    Title Should Be         Google