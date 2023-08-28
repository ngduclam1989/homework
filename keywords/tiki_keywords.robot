*** Settings ***
Resource    ../pages/tiki.robot
Library  SeleniumLibrary    

*** Keywords ***
search keyword
    [Arguments]     ${value_type}  
    Click Element    ${input_search}
    Input Text     ${input_search}    ${value_type}
    Sleep    2s
Choice key 
    Click Element    ${choice_value}
    Sleep    5s

Choice by element number
    Click Element    ${product_4}
    Sleep     3s

Click buynow Button
    Mouse Over    //h1[1]
    Click Element    ${btn_BuyNow}
    Sleep     3s
   
Verify text Hello
    Page Should Contain Element    ${label_hello}
