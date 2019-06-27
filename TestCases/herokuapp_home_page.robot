*** Settings ***
Library    SeleniumLibrary
Resource    ${EXECDIR}\\Util\\common_actions.robot
Resource    ${EXECDIR}\\TestData\\test_data.robot
Resource    ${EXECDIR}\\Pages\\home_page.robot
Test Teardown    Close Browsers

*** Test Cases ***
Print Number Of Links In Url
    The Website Should Open 
    Print All Links   

*** Keywords ***
The Website Should Open
    Open Browser and Website    &{COMMON_DATA}[url]    &{COMMON_DATA}[browser]
    Page Should Be Loaded    &{IHP_VALIDATION}[hp_url]