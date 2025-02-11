*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/
Suite Teardown    Close Browser


*** Variables ***
${username}    myuser_name
${email}    myemail123@gmail.co

*** Keywords ***


*** Test Cases ***
Check Home Page
    Page Should Contain    Full-Fledged practice website for Automation Engineers

Go to SignUp Page
    Click Button    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]
    # Wait Until Page Contains    New User Signup!