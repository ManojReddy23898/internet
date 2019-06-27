*** Settings ***
Resource    ${EXECDIR}\\TestData\\test_data.robot

*** Keywords ***
Open Browser and Website
    [Documentation]    This keyword is used to open the required website in required browser
    [Arguments]    ${url_data}    ${browsername_data}
    Open Browser    ${url_data}    ${browsername_data}
    Maximize Browser Window

Close Browsers
    [Documentation]    This keyword is used to close the bowser
    Close Browser

Click On The Link And Page Should Be Loaded
    [Documentation]    This keyword is used to click on the links and checks if the page has loaded
    [Arguments]    ${link_text}    ${validation} 
    Click Link     ${link_text}  
    Location Should Contain      ${validation}
    Go To    &{COMMON_DATA}[url]