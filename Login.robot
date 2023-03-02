*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}=     https://www.saucedemo.com/
${Browser}=     chrome
${validate_user}=    standard_user
${password}=    secret_sauce


#robot -t 'TC_Login_Success' Login.robot
*** Test Cases ***
TC_Login_Success
    Open Browser    ${URL}    ${Browser}
    Input text      id=user-name    ${validate_user}
    Input text      id=password     ${password}
    Click Button    id=login-button
    wait until Page Contains    Products