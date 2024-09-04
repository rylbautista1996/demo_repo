*** Settings ***
Library    SeleniumLibrary
#Library    directory.py
Library    Collections
Resource    ../Locators/Register_Locators.robot
Resource    ../Resources/Register.robot
Resource    ../Resources/CommonFunctions.robot
Library     DataDriver      ../TestData/TESTDATA1.xlsx   sheet_name=Sheet1


Test Setup      Open Register Application
Test Teardown   Close Browser Window
Test Template   Populate Register Page

*** Variables ***
${GLOBAL_VAR} =     Global Variable
${firstName} =   DARYL JOHN
${lastName} =   BLANCAFLOR
@{firstNameList} =  DARYL   JUAN    PEDRO
&{lastNameDictionary} =     Daryl=Blancaflor    Pedro=Penduko   Juan=Delacruz
&{environmentURLS} =    dev=dev.com     qa=qa.com       prod=prod.com
${condition1} =     Explore
${condition2} =     Test1234
@{completeYoutubeExploreList} =     ['Trending','Music','Movies','Gaming News','Sports,Fashion & Beauty']
${count} =      //*[@id="endpoint"]/tp-yt-paper-item/yt-formatted-string[contains(text(),"Trending")]


*** Test Cases ***
TC01 - Populate Register Page       ${firstName}    ${lastName}     ${hobby}    ${skill}


*** Keywords ***
Populate Register Page
    [Documentation]     This testcase is used to run the automation script to populate Registration Page.
    ...     @author:    dblancaflor     03Sep2024   - initial create
    ...     @update:    dblancaflor     03Sep2024   - added script to save the details of the customer
    [Arguments]     ${firstName}    ${lastName}     ${hobby}    ${skill}
    ### ----- This block of code
    Register.Set First Name  ${firstName}
    Register.Set Last Name   ${lastName}
    Register.Select Hobbies    ${hobby}
    Register.Select Skills    ${skill}
    Capture Page Screenshot    Test.png

    Sleep    2

### ------ This block of code is processing the payment ----- ###




#    Open Browser    https://www.youtube.com/    chrome
#    Maximize Browser Window
#    ${pageTitle}=   Get Title
#    Should Be Equal As Strings    ${pageTitle}    YouTube
#    Log    ${pageTitle}




#  #  {curr_dir} =     Get Project Directory
#    Open Browser    https://demo.automationtesting.in/Register.html    chrome
#    Maximize Browser Window
#    Title Should Be    Register    Incorrect Title Page
#    Wait Until Element Is Visible    ${firstName_TEXTFIELD}    30
#    Set First Name
#  # Input Text    ${firstName_TEXTFIELD}    ${firstNameList}[2]
#    Input Text    ${lastName_TEXTFIELD}    ${lastNameDictionary.Pedro}
#    Log    My Fullname is ${firstName} ${lastName}
#   Clear Element Text    //input[@placeholder="First Name"]
#    ${FirstName_Value} =     Get Text    //h2
#    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
#    Sleep   3
#    Click Element    //a[@class='link youtube']
#    Switch Window   Register
#    Sleep    3
#    Switch Window   Krishna Sakinala - YouTube
#    Sleep    3

      ### IF ELSE ###
#    Run Keyword If    "${condition1}"=="Test123" and "${condition2}"=="Test1234"    Run Keywords
#    ...     Log     Condition is True
#    ...     AND     Input Text    //input[@placeholder="First Name"]    ${firstName}
#    ...     ELSE    Run Keywords
#    ...     Log     Condition is False
#    ...     AND     Input Text    //input[@placeholder="Last Name"]    ${lastNameDictionary.Juan}
#    Sleep   5

    ### FOR LOOP ###
#    FOR    ${index}    IN RANGE     3
#        Run Keyword If    ${index}== 2      Run Keywords
#        ...     Log    Test
#        ...     AND    Exit For Loop
#    END

    ###



#    ctrl+/ to disable code

#    Should Be Equal    ${FirstName_Value}    Register
#    ${ngmodel_attr_value} =    Get Element Attribute    //input[@placeholder="First Name"]    ng-model
#
#    Click Element    //input[@name="radiooptions" and @value="Male"]
#
#    Select Checkbox    //input[@type="checkbox" and @value="Cricket"]
#    Select Checkbox    //input[@type="checkbox" and @value="Movies"]
#    Select Checkbox    //input[@type="checkbox" and @value="Hockey"]
#
#    Unselect Checkbox    //input[@type="checkbox" and @value="Movies"]
#
#    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
#    Select From List By Index    Skills    1
#    Select From List By Label    Skills    Backup Management
#    Select From List By Value    Skills    Certifications
#
##   Click Button    //button[contains(text(),"Refresh")]
#
#    Press Keys    //input[@placeholder="First Name"]    CTRL+A    CTRL+C
#    Clear Element Text     //input[@placeholder="Last Name"]
#    Press Keys    //input[@placeholder="Last Name"]    CTRL+V
#
#    Choose File    imagesrc    D:/Desktop/ROBOTFRAMEWORK/IMG_4723.PNG
#
#    Sleep    3
#    Capture Page Screenshot    Test.png
    
