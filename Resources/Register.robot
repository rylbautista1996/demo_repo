*** Settings ***
Resource    ../Locators/Register_Locators.robot
Library     SeleniumLibrary
Library     String

*** Keywords ***
Set First Name
    [Documentation]     This keyword is used to enter First Name in Registration Page.
    [Arguments]     ${firstName}
    Wait Until Element Is Visible    ${firstName_TEXTFIELD}
    Input Text    ${firstName_TEXTFIELD}    ${firstName}

Set Last Name
    [Documentation]     This keyword is used to enter Last Name in Registration Page.
    [Arguments]     ${lastName}
    Wait Until Element Is Visible    ${lastName_TEXTFIELD}
    Input Text    ${lastName_TEXTFIELD}    ${lastName}

Select Hobbies
    [Documentation]     This keyword is used to checked Hobbies in Registration Page.
    [Arguments]     ${hobby}
    ${selected_hobby} =     Replace String    ${hobby_CHECKBOX}    hobby    ${hobby}
    Wait Until Element Is Visible    ${selected_hobby}
    Click Element    ${selected_hobby}

Select Skills
    [Documentation]     This keyword is used to select dropdown Skills in Registration Page.
    [Arguments]     ${skill}
    ${selected_skill} =     Replace String    ${skills_DROPDOWN}    selected skill    ${skill}
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
#    Click Element    ${skills_text_DROPDOWN}
#    Sleep    1
#    Wait Until Element Is Visible    ${selected_skill}
#    Click Element    ${selected_skill}
     Select From List By Value    ${skills_text_DROPDOWN}    ${skill}


