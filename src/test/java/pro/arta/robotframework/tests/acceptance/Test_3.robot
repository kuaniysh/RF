*** Settings ***
Library    Remote     http://localhost:8270

*** Test Cases ***
Call Remote Keyword
    Print Message    "Testnachricht"