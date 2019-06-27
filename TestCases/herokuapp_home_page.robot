*** Settings ***
Library    SeleniumLibrary
Resource    ${EXECDIR}\\Util\\common_actions.robot
Resource    ${EXECDIR}\\TestData\\test_data.robot
Resource    ${EXECDIR}\\Pages\\home_page.robot
Suite Setup    Open Browser and Website    &{COMMON_DATA}[url]    &{COMMON_DATA}[browser]
Test Template    Click On The Link And Page Should Be Loaded
Suite Teardown   Close Browsers

*** Test Cases ***
Click On Every Link and Verify whether Page Has Loaded Or Not
    &{IHP_LINK}[link_1]    &{IHP_VALIDATION}[valid_1]
    &{IHP_LINK}[link_2]    &{IHP_VALIDATION}[valid_2]
    &{IHP_LINK}[link_3]    &{IHP_VALIDATION}[valid_3]