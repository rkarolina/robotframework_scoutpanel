*** Settings ***
Library  SeleniumLibrary

Documentation    Suite description #automated tests for scout website
*** Variables ***
${LOGIN URL}      https://scouts-test.futbolkolektyw.pl/en
${BROWSER}        Chrome
${SIGNINBUTTON}     xpath=//*[text()='Sign in']
${EMAILINPUT}       xpath=//*[@id='login']
${PASSWORDINPUT}    xpath=//*[@id='password']
${PAGELOGO}         xpath=//*[@id='__next']/div[1]/main/div[3]/div[1]/div/div[1]
${PLAYERSURL}   https://scouts-test.futbolkolektyw.pl/en/players
${PLAYERSBUTTON}    xpath=//ul[1]/div[2]/div[2]/span
${DOWNLOADCSVBUTTON}    xpath=//*[@data-testid='Download CSV-iconButton']
${MAINPAGELINK}           xpath=//ul[1]//div[@role='button'][1]
${ADDPLAYERBUTTON}            xpath=//a[contains(@href,'add')]
${EDITPLAYERTITLE}                   xpath=//form//*[contains(@class, 'h5')]
${NAME}            xpath=//input[@name='name']
${SURNAME}         xpath=//input[@name='surname']
${AGE}             xpath=//input[@name='age']
${MAINPOSITION}   xpath=//input[@name='mainPosition']
${ELEMENTASSERTEDIT}         xpath=//*[@role='alert']
${PLAYERSBUTTON}        xpath=//button[@type="players"]
*** Test Cases ***
Login to the system
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Assert dashboard
    [Teardown]    Close Browser
Downoload Csv file
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Click on Players Button
    Assert players
    Click on the DownloadCSV button
    [Teardown]    Close Browser
Add new player
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Click on the Add player button
    Type in name
    Type in surname
    Type in age
    Type in main position
    Click on the Submit button
    Assert edit player page
    [Teardown]    Close Browser

Edit new player
*** Keywords ***
Open login page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be     Scouts panel - sign in
Type in email
    Input Text   ${EMAILINPUT}   user07@getnada.com
Type in password
    Input Text   ${PASSWORDINPUT}   Test-1234
Click on the Sign in button
    Click Element   ${SIGNINBUTTON}
Click on the Submit button
    Click Element    xpath=//*[@type='submit']
Assert dashboard
    Wait Until Element Is Visible   ${PAGELOGO}
    Title Should Be    Scouts panel
    Capture Page Screenshot    screenshots/alert.png
Click on Players Button
    Wait Until Element Is Visible       ${MAINPAGELINK}
    Title Should Be     Scouts panel
    Click Element    ${PLAYERSBUTTON}
Assert players
    Wait Until Element Is Visible    ${PAGELOGO}
    Title Should Be     Scouts panel
    Capture Page Screenshot    screenshots/players.png
Click on the DownloadCSV button
    Wait Until Element Is Visible       ${MAINPAGELINK}
    Click Element    ${DOWNLOADCSVBUTTON}
Click on the Add player button
    Wait Until Element Is Visible       ${MAINPAGELINK}
    Click Element    ${ADDPLAYERBUTTON}
Type in name
    Wait Until Element Is Visible       ${EDITPLAYERTITLE}
    Input Text      ${NAME}    Test
Type in surname
    Input Text      ${SURNAME}     Testowski
Type in age
    Input Text      ${AGE}     01/01/1990
Type in main position
    Input Text      ${MAINPOSITION}       Bramkarz
Assert edit player page
    Wait Until Element Is Visible    ${ELEMENTASSERTEDIT}
    Element Should Contain      ${EDITPLAYERTITLE}   Edit player
    Capture Page Screenshot    screenshots/player-added.png