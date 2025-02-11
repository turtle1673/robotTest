*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://automationexercise.com/
Suite Teardown    Close Browser


*** Variables ***
${username}    myuser_name
${email}    myemail123@gmail.co
${password}    1234

${firstname}    myfirstname
${lastname}    mylastname
${company}    up university
${address1}    my address
${address2}    my address2
${state}    my satate
${city}    my City
${zipcode}   DG12G57
${phone}    0123456789

*** Keywords ***
Check Home Page
    Page Should Contain    Full-Fledged practice website for Automation Engineers

Go to SignUp Page
    Click Element    //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]
    Wait Until Page Contains    New User Signup!

Enter Name email
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[2]    ${username}
    Input Text    //*[@id="form"]/div/div/div[3]/div/form/input[3]    ${email}
    Click Button    //*[@id="form"]/div/div/div[3]/div/form/button
    Wait Until Page Contains    Enter Account Information

Fill Data
    Click Button    //*[@id="id_gender1"]
    Input Text    //*[@id="password"]    ${password}
    Click Button    //*[@id="newsletter"]
    Click Button    //*[@id="optin"]
    Select From List by Value    //*[@id="days"]    1
    Select From List By Value    //*[@id="years"]    2021
    Select From List By Value    //*[@id="months"]    1
    Input Text    //*[@id="first_name"]    ${firstname}
    Input Text    //*[@id="last_name"]    ${lastname}
    Input Text    //*[@id="company"]    ${company}
    Input Text    //*[@id="address1"]    ${address1}
    Input Text    //*[@id="address2"]    ${address2}
    Select From List By Value    //*[@id="country"]    India
    Input Text    //*[@id="state"]    ${state}
    Input Text    //*[@id="city"]    ${city}
    Input Text    //*[@id="zipcode"]    ${zipcode}
    Input Text    //*[@id="mobile_number"]    ${phone}
    Click Button   //*[@id="form"]/div/div/div/div[1]/form/button
    Wait Until Page Contains    'ACCOUNT CREATED!



*** Test Cases ***
RegisterTest
    Check Home Page
    Go to SignUp Page
    Enter Name email
    Fill Data