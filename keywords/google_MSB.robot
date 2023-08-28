*** Settings ***
Resource     ../pages/MSB.robot 
Library     SeleniumLibrary


*** Keywords ***

search MSB
    [Arguments]     ${google_keyword}  
    Click Element    ${input_google}
    Input Text     ${input_google}    ${google_keyword}
    

Send ENTER key
    Press Keys    ${input_google}    ENTER
    Sleep    2s

Choice 1st MSB area
    Click Element    ${MSB_area1}
    Sleep    2s

Close by button X   
    Wait Until Element Is Visible        ${X_button}
    Click Element        ${X_button} 
    Sleep    2s

Verify text Welcome MSB
    Page Should Contain Element    ${label_WelcomeMSB}



    

