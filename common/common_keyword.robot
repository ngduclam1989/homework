*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${GURU PAGE}      https://demo.guru99.com/test/login.html
${TIKI PAGE}        https://tiki.vn
${GOOGLE PAGE}        https://google.com
${BROWSER}          CHROME


*** Keywords ***
Open Webpage guru99    
    Open Browser    ${GURU PAGE}    ${BROWSER}
    Maximize Browser Window
    Sleep    3s


Open Webpage tiki        
    Open Browser    ${TIKI PAGE}    ${BROWSER}
    Maximize Browser Window
    Sleep    5s

Open webpage google    
    Open Browser       ${GOOGLE PAGE}    ${BROWSER}
    Maximize Browser Window    
    Sleep        5s
