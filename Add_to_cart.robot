*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}=     https://www.saucedemo.com/
${Browser}=     chrome
${validate_user}=    standard_user
${password}=    secret_sauce


#robot -t 'TC_Add_To_Cart_Success' Add_to_cart.robot
*** Test Cases ***
TC_Add_To_Cart_Success
    Open Browser    ${URL}    ${Browser}
    Input text      id=user-name    ${validate_user}
    Input text      id=password     ${password}
    Click Button    id=login-button
    wait until Page Contains    Sauce Labs Backpack
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Element    id=shopping_cart_container
    wait until Page Contains    Sauce Labs Backpack
