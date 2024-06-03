*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    chrome


*** Test Cases ***
Connection
    Open Browser     ${url}    ${browser}
    Maximize Browser Window
    Sleep    1
    Input Text    user-name    standard_user
    Sleep    1
    Input Password    password    secret_sauce
    Sleep    1
    Click Button    login-button
    Sleep    1
    Click Element    xpath: //*[@id="item_0_title_link"]/div  
    sleep     1
    Click Button    add-to-cart
    sleep     1
    Click Element    back-to-products
    Sleep    1
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-backpack"]
    Sleep    1
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-fleece-jacket"]
    Sleep    1
    Click Button    xpath: //*[@id="add-to-cart-sauce-labs-bolt-t-shirt"]
    Sleep    1
    Click Link    xpath: //*[@id="shopping_cart_container"]/a
    Sleep    1
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    1
    Click Button    checkout
    sleep     1
    Input Text    firstName    Bassem
    Sleep    1
    Sleep    1
    Input Text    last-name    Hemaizia
    Sleep    1
    Input Text    postalCode    24009
    Sleep    1
    Click Button    continue
    Sleep    1
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    1
    Click Button    finish
    Sleep    1
    Click Button    back-to-products
    Sleep    2    
    Close Browser


*** Keywords ***