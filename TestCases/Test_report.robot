** Settings ***
Documentation    Test to add new Employee 
Library    SeleniumLibrary
Library    DataDriver    file=../TestData/Reports.xlsx   sheet_name=Report
Test Setup    Open the Browser with URL
Test Teardown    Close Browser Session
Resource    ../Resources/GenericResources.robot
Resource    ../Resources/PIMResources.robot
Test Template    Reports

*** Test Cases ***
Reports    ${reports}    

*** Keywords ***
Reports 
    Input Text    xpath://input[@placeholder="Username"]    Admin
    Input Password    xpath://input[@placeholder="Password"]    admin123
    Click Button    xpath://button[@type='submit']
    PIMResources.Click on PIM Button
    PIMResources.click on report field
    [Arguments]    ${report_name}
    PIMResources.Fill reports name    ${report_name}
    PIMResources.Dropdown functionality    ${report_name}
    PIMResources.click on search button

Reports to reset the field
    Input Text    xpath://input[@placeholder="Username"]    Admin
    Input Password    xpath://input[@placeholder="Password"]    admin123
    Click Button    xpath://button[@type='submit']
    PIMResources.Click on PIM Button
    PIMResources.click on report field
    [Arguments]    ${report_name}
    PIMResources.Fill reports name    ${report_name}
    PIMResources.Dropdown functionality    ${report_name}
    PIMResources.Click on reset button

Reports to check invalid field
    Input Text    xpath://input[@placeholder="Username"]    Admin
    Input Password    xpath://input[@placeholder="Password"]    admin123
    Click Button    xpath://button[@type='submit']
    PIMResources.Click on PIM Button
    PIMResources.click on report field
    [Arguments]    ${report_name}    ${Report}
    PIMResources.Fill reports name    ${report_name}
    PIMResources.Dropdown functionality    ${Report}
    PIMResources.click on save button for invalid
    PIMResources.click on search button
