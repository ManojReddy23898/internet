*** Keywords ***
Open Browser and Website
    [Documentation]    This keyword is used to open the required website in required browser
    [Arguments]    ${url_data}    ${browsername_data}
    Open Browser    ${url_data}    ${browsername_data}
    Maximize Browser Window

Close Browsers
    [Documentation]    This keyword is used to close the bowser
    Close Window

Page Should Be Loaded
    [Documentation]    This keyword is used to verify whether the clicked page is loaded or not
    [Arguments]    ${validation}
    Location Should Contain      ${validation}