*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open Register Application


    ##### ------ HEADLESS BROWSER TESTING ----- #####
#    ${chrome_options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
#    Call Method    ${chrome_options}    add_argument  --headless
#    Create Webdriver    Chrome      options=${chrome_options}
#    Go To    https://demo.automationtesting.in/Register.html

    Open Browser    https://demo.automationtesting.in/Register.html    chrome
    Maximize Browser Window
    Title Should Be    Register     Incorrect Title Page

Close Browser Window
    Close Window
