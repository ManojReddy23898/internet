*** Variables ***
&{IHP_LOCATOR}    
&{IHP_VALIDATION}    hp_url=http://the-internet.herokuapp.com/
${LOWER_LIMIT}    1

*** Keywords ***
Print All Links
    [Documentation]    This keyword is used to print all links present on the page
    ${count}    Get Element Count    xpath://ul/li
    Log To Console    ${count}
    :FOR    ${index}    IN RANGE    ${LOWER_LIMIT}     ${count}+1
        \    ${links}    Get Text    xpath://ul/li[${index}]
        \    Log To Console    ${links}     