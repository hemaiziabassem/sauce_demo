*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome


*** Test Cases ***
Connection
    Open Browser     ${url}    ${browser}
    Maximize Browser Window
    Input Text    user-name    standard_user
    Input Password    password    secret_sauce
    Click Button    login-button
    Click Element    xpath: //*[@id="item_0_title_link"]/div  
    Wait Until Page Contains Element        add-to-cart
    Click Button    add-to-cart
    Click Element    back-to-products
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-backpack"]
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-fleece-jacket"]
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Click Link    xpath: //*[@id="shopping_cart_container"]/a
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    checkout
    Wait Until Element Is Visible    xpath: //*[@id="header_container"]/div[2]/span
    Input Text    firstName    Bassem
    Input Text    last-name    Hemaizia
    Input Text    postalCode    24009
    Click Button    continue
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Click Button    finish
    Wait Until Element Is Visible    xpath: //*[@id="header_container"]/div[2]/span
    Click Button    back-to-products  
    Close Browser


*** Keywords ***