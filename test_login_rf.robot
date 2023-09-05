*** Settings ***
Library  SeleniumLibrary

Documentation    Suite description #automated tests for scout website
*** Variables ***
${LOGIN URL}      https://scouts-test.futbolkolektyw.pl/en
${BROWSER}        Chrome
${SIGNINBUTTON}     xpath=//*[text()='Sign in']
${EMAILINPUT}       xpath=//*[@id='login']
${PASSWORDINPUT}    xpath=//*[@id='password']
${DEVTEAMCONTACT}   xpath=//*[text()='Dev team contact']
${PAGELOGO}         xpath=//*[@class='MuiCardMedia-root jss50'][@title='Logo Scouts Panel']
${MAINPAGELINK}           xpath=//*[text()='Main page' or text()='Strona główna']
${PLAYERSURL}   https://scouts-test.futbolkolektyw.pl/en/players
${PLAYERSBUTTON}    xpath=//*[text()='Players' or text()='Gracze']
${MATCHESBUTTON}    xpath=//*[text()='Matches' or text()='Mecze']
${POLSKIENGLISHBUTTON}  xpath=//*[text()='Polski' or text()='English']
${SIGNOUTBUTTON}    xpath=//*[text()='Sign out' or text()='Wyloguj']
${DOWNLOADCSVBUTTON}    xpath=//*[@data-testid='Download CSV-iconButton']
${ADDPLAYERBUTTON}            xpath=//a[contains(@href,'add')]
#players page
${FILTERBUTTON}     xpath=//*[@data-testid='Filter Table-iconButton']
${FIRSTPLAYER}     xpath=//*[@id='MUIDataTableBodyRow-0']
${SEARCHINPUT}     xpath=//*[@class='MuiInputBase-input jss41']
${FILTERNAME}     xpath=//div[2]/div[1]/div/div/div/input
${FILTERSURNAME}     xpath=//div[2]/div[3]/div/div[2]/div[2]/div/div/div/input
${FILTERAGEMIN}     xpath=//div[2]/div[3]/div/div/div/div[1]/div/input
${FILTERAGEMAX}     xpath=//div[3]/div/div[2]/div[3]/div/div/div/div[2]/div/input
${FILTERMAINPOSITION}     xpath=//div[4]/div/div/div/input
${FILTERCLUB}     xpath=//div/div[2]/div[5]/div/div/div/input
${FILTERRATEMIN}     xpath=//div[2]/div[6]/div/div/div/div[1]/div/input
${FILTERRATEMAX}     xpath=//div[6]/div/div/div/div[2]/div/input
${RESETBUTTON}     xpath=//div[1]/div[1]/button/span[1]
${CLOSEFILTERBUTTON}     xpath=/html/body/div[2]/div[3]/button
${PLAYERSTITLE}     xpath=/html/head/title
${EDITPLAYERTITLE}                   xpath=//form//*[contains(@class, 'h5')]
${PLAYERSEMAIL}    xpath=//input[@name='email']
${NAME}            xpath=//input[@name='name']
${SURNAME}         xpath=//input[@name='surname']
${PHONE}    xpath=//input[@name='phone']
${WEIGHT}   xpath=//input[@name='weight']
${HEIGHT}   xpath=//input[@name='height']
${AGE}             xpath=//input[@name='age']
${LEG}   xpath=//*[@id='mui-component-select-leg']
${LEGMENU}   xpath=//*[@class='MuiList-root MuiMenu-list MuiList-padding']
${RIGHTLEG}   xpath=//*[contains(@data-value, 'right')]
${LEFTLEG}   xpath=//*[contains(@data-value, 'left')]
${CLUB}   xpath=//input[@name='club']
${LEVEL}   xpath=//input[@name='level']
${MAINPOSITION}   xpath=//input[@name='mainPosition']
${SECONDPOSITION}   xpath=//input[@name='secondPosition']
${DISCTRICT}    xpath=//*[@id='mui-component-select-district']
${DOLNOSCLASKIE}    xpath=//*[starts-with(@data-value, 'dolnoslaskie')]
${KUJ-POM}    xpath=//*[starts-with(@data-value, 'kujawsko-pomorskie')]
${LUBELSKIE}    xpath=//li[text()='Lublin' and @data-value='lubelskie']
${LUBUSKIE}    xpath=//*[starts-with(@data-value, 'lubuskie')]
${LODZKIE}    xpath=//*[starts-with(@data-value, 'lodzkie')]
${MALOPOLSKIE}    xpath=/li[text()='Lesser Poland' and @data-value='malopolskie']
${MAZOWIECKIE}    xpath=//*[starts-with(@data-value, 'mazowieckie')]
${OPOLSKIE}    xpath=//*[starts-with(@data-value, 'opolskie')]
${PODKARPACKIE}    xpath=//*[starts-with(@data-value, 'podkarpackie')]
${PODLASKIE}    xpath=//*[starts-with(@data-value, 'podlaskie')]
${POMORSKIE}    xpath=//li[text()='Pomerania' or @data-value='pomorskie']
${SLASKIE}    xpath=//*[starts-with(@data-value, 'slaskie')]
${SWIETOKRZYSKIE}    xpath=//*[starts-with(@data-value, 'swietokrzyskie')]
${WAR-MAZ}    xpath=//*[starts-with(@data-value, 'warminsko-mazurskie')]
${WIELKOPOLSKIE}    xpath=//*[starts-with(@data-value, 'wielkopolskie')]
${ZACH-POM}    xpath=//*[starts-with(@data-value, 'zachodniopomorskie')]
${ACHIEVEMENTS}    xpath=//input[@name='achievements']
${ADDLANGUAGEBUTTON}    xpath=//div[15]/button/span[1]
${LANGUAGETOPROVIDE}    xpath=//div[15]/div/div/div/input
${REMOVELANGUAGEBUTTON}    xpath=//*[@aria-label='Remove language']
${LACZYNASPILKA}    xpath=//input[@name='webLaczy']
${NINETYMINUTES}    xpath=//input[@name='web90']
${FACEBOOK}    xpath=//input[@name='webFB']
${ADDYOUTUBEBUTTON}    xpath=//*[@aria-label='Add link to Youtube']
${YOUTUBETOPROVIDE}    xpath=//div[19]/div/div/div/input
${REMOVEYOUTUBEBUTTON}    xpath=//div[2]/div/div[19]/div/button
${PLAYERSUBMITBUTTON}    xpath=//*[@type='submit']
${ADDPLAYERCLEARBUTTON}    xpath=//*[text()='Clear']
${CURRENTPLAYERBUTTON}         xpath=//ul[2]/div[1]/div[2]/span
#add match
${ADDMATCHBUTTON}   xpath=//*[text()='Add match' or text()='Dodaj mecz']
${EDITADDMATCHTITLE}    xpath=/html/head/title
${MYTEAM}       xpath=//input[@name='myTeam']
${ENEMYTEAM}       xpath=//input[@name='enemyTeam']
${MYTEAMSCORE}       xpath=//input[@name='myTeamScore']
${ENEMYMYTEAMSCORE}       xpath=//input[@name='enemyTeamScore']
${MATCHDATE}       xpath=// input[@type= 'date']
${MATCHATHOME}       xpath=//input[@name='matchAtHome'][@value='true']
${MATCHOUTHOME}       xpath=//input[@name='matchAtHome'][@value='false']
${TSHIRT}       xpath=//div[7]/div/div/input
${LEAGUE}       xpath=//input[@name='league']
${TIMEPLAYED}       xpath=//input[@name='timePlayed']
${PLAYERSNUMBER}       xpath=//input[@name='number']
${WEBMATCH}       xpath=//input[@name='webMatch']
${GENERAL}       xpath=//input[@name='general']
${RATING}       xpath=//input[@name='rating']
${ADDMATCHSUBMITBUTTON}       xpath=//*[contains(@class, 'containedPrimary')]
${ADDMATCHCLEARBUTTON}       xpath=//*[contains(@class, 'containedSecondary')]
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
    Assert Dashboard
    Click on Players Button
    Click on the DownloadCSV button
#    Assert players
    [Teardown]    Close Browser
Add new player
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Assert Dashboard
    Click on the Add player button
#    Assert Add Player Page
    Type In Player Email
    Type in name
    Type in surname
    Type In Phone
    Type In Weight
    Type In Height
    Type in age
    Type In Club
    Type In Level
    Type in main position
    Type In Second Position
    Type In Achievements
    Type In Laczy Nas Pilka
    Type In Ninety Minutes
    Type In Facebook
    Click add or edit player submit button
#    Assert edit player page
    [Teardown]    Close Browser
Filter player
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Assert Dashboard
    Click on Players Button
#    Assert Players
    Click Filter Button
    Type In Filtered Name
    Type In Filtered Surnname
    Type In Filtered Min Age
    Type In Filtered Max Age
    Type In Filtered Main Position
    Type In Filtered Club
    Type In Filtered Min Rate
    Type In Filtered Max Rate
    Click Filter Close Button
    Click First Player Result
    Assert Edit Player Page
Add new match
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
    Assert Dashboard
    Click on Players Button
    Click Filter Button
    Type In Filtered Min Age
    Type In Filtered Max Age
    Type In Filtered Main Position
    Type In Filtered Min Rate
    Type In Filtered Max Rate
    Click Filter Close Button
    Click First Player Result
#    Assert players
    Click matches button
    Click On Add Match Button
    Type In My Team
    Type In Enemy Team
    Type In My Score
    Type In Enemy Score
    Type In Match Date
    Click On Match At Home Radio Button
    Type In Tshirt
    Type In League
    Type In Time Played
    Type In Players Number
    Type In Web Match
    Type In General
    Type In Rating
    Click On Submit Match Button
#    Assert Matches
    [Teardown]    Close Browser
Edit new player
    Open login page
    Type in email
    Type in password
    Click on the Sign in button
#    Assert Dashboard
    Click On Players Button
#    Assert Players
    Click Filter Button
    Type In Filtered Min Rate
    Type In Filtered Max Rate
    Click Filter Close Button
    Click First Player Result
#    Assert Edit Player Page
    Clear filled players email
    Type In Player Email
#    Type in name
#    Type in surname
#    Type In Phone
#    Type In Weight
#    Type In Height
#    Type in age
#    Type In Club
#    Type In Level
#    Type in main position
#    Type In Second Position
#    Type In Achievements
#    Type In Laczy Nas Pilka
#    Type In Ninety Minutes
#    Type In Facebook
    Click add or edit player submit button
##    Assert edit player page
    [Teardown]    Close Browser
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
    Click Element    ${PLAYERSUBMITBUTTON}
Click on Players Button
    Wait Until Element Is Visible       ${MAINPAGELINK}
    Title Should Be     Scouts panel
    Click Element    ${PLAYERSBUTTON}
Click on the DownloadCSV button
    Wait Until Element Is Visible       ${DOWNLOADCSVBUTTON}
    Click Element    ${DOWNLOADCSVBUTTON}
Click on the Add player button
    Wait Until Element Is Visible       ${MAINPAGELINK}
    Click Element    ${ADDPLAYERBUTTON}
Type in player email
    Wait Until Element Is Visible       ${EDITPLAYERTITLE}
    Input text  ${PLAYERSEMAIL}    abc@gmail.com
Type in name
    Input Text      ${NAME}    Test
Type in surname
    Input Text      ${SURNAME}     Testowski
Type in age
    Input Text      ${AGE}     01/01/1990
Type in phone
    Input Text      ${PHONE}     500900200
Type in weight
    Input Text      ${WEIGHT}    70
Type in height
    Input Text      ${HEIGHT}    170
Type in club
    Input Text      ${CLUB}    Legia
Type in level
    Input text  ${LEVEL}    łatwy
Type in main position
    Input Text      ${MAINPOSITION}       Bramkarz
Type in second position
    Input Text      ${SECONDPOSITION}       Obrońca
Type in achievements
    Input Text      ${ACHIEVEMENTS}       yes
Click on the add language button
    Click Element   ${ADDLANGUAGEBUTTON}
Click on the remove language button
    Click Element   ${REMOVELANGUAGEBUTTON}
Type in laczy nas pilka
    Input Text      ${LACZYNASPILKA}       yes
Type in ninety minutes
    Input Text      ${NINETYMINUTES}       yes
Type in facebook
    Input Text      ${FACEBOOK}       yes
Click on the add youtube button
    Click Element   ${ADDYOUTUBEBUTTON}
Click on the remove youtube button
    Click Element   ${REMOVEYOUTUBEBUTTON}
Click add or edit player submit button
    Click Element   ${PLAYERSUBMITBUTTON}
Click on clear player button
    Click Element   ${ADDPLAYERCLEARBUTTON}
Click on add match button
    Wait Until Element Is Visible    ${ADDMATCHBUTTON}
    Click Element   ${ADDMATCHBUTTON}
Type in my team
    Wait Until Element Is Visible       ${MYTEAM}
    Input text  ${MYTEAM}    team1
Type in enemy team
    Wait Until Element Is Visible       ${ENEMYTEAM} 
    Input text  ${ENEMYTEAM}    enemyteam1
Type in my score
    Wait Until Element Is Visible       ${MYTEAMSCORE}
    Input text  ${MYTEAMSCORE}    3
Type in enemy score
    Wait Until Element Is Visible       ${ENEMYMYTEAMSCORE}
    Input text  ${ENEMYMYTEAMSCORE}    2   
Type in match date
    Wait Until Element Is Visible       ${MATCHDATE}
    Input text  ${MATCHDATE}     12.12.2012    
Click on match at home radio button
    Click Element   ${MATCHATHOME} 
Click on match out home radio button
    Click Element   ${MATCHOUTHOME}
Type in tshirt
    Wait Until Element Is Visible       ${TSHIRT}
    Input text  ${TSHIRT}    yellow
Type in league
    Wait Until Element Is Visible       ${LEAGUE}
    Input text  ${LEAGUE}    champions
Type in time played
    Wait Until Element Is Visible       ${TIMEPLAYED}
    Input text  ${TIMEPLAYED}   120
Type in players number
    Wait Until Element Is Visible    ${PLAYERSNUMBER}
    Input Text    ${PLAYERSNUMBER}  5
Type in web match
    Wait Until Element Is Visible    ${WEBMATCH}
    Input Text    ${WEBMATCH}   yesyesys
Type in general
    Wait Until Element Is Visible    ${GENERAL}
    Input Text    ${GENERAL}    nope
Type in rating
    Input Text    ${RATING}     3
Click on submit match button
    Click Element   ${ADDMATCHSUBMITBUTTON}
Click on clear match button
    Click Element   ${ADDMATCHCLEARBUTTON}
Click back to main page button
    Click Element   ${MAINPAGELINK}
Click filter button
    Wait Until Element Is Visible    ${FILTERBUTTON}
    Click element   ${FILTERBUTTON}
Click first player result
    Click Element    ${FIRSTPLAYER}
Type in filtered name
    Wait Until Element Is Visible    ${FILTERNAME}
    Input Text    ${FILTERNAME}   Maciej
Type in filtered surnname
    Wait Until Element Is Visible    ${FILTERSURNAME}
    Input Text    ${FILTERSURNAME}   Bongos
Type in filtered min age
    Wait Until Element Is Visible    ${FILTERAGEMIN}
    Input Text    ${FILTERAGEMIN}    0
Type in filtered max age
    Wait Until Element Is Visible    ${FILTERAGEMAX}
    Input Text    ${FILTERAGEMAX}    29
Type in filtered main position
    Wait Until Element Is Visible    ${FILTERMAINPOSITION}
    Input Text   ${FILTERMAINPOSITION}   bramkarz
Type in filtered club
    Wait Until Element Is Visible    ${FILTERCLUB}
    Input Text   ${FILTERCLUB}    fc barcelona
Type in filtered min rate
    Wait Until Element Is Visible    ${FILTERRATEMIN}
    Input Text    ${FILTERRATEMIN}    0
Type in filtered max rate
    Wait Until Element Is Visible    ${FILTERRATEMAX}
    Input Text    ${FILTERRATEMAX}    50
Click filter reset button
    Click element   ${RESETBUTTON}
Click filter close button
    Click Element    ${CLOSEFILTERBUTTON}
Click matches button
    Wait Until Element Is Visible    ${MATCHESBUTTON}
    Click element   ${MATCHESBUTTON}
Assert dashboard
    Wait Until Element Is Visible   ${DEVTEAMCONTACT}
    Title Should Be    Scouts panel
    Capture Page Screenshot    screenshots/alert.png
Assert players
    Wait Until Element Is Visible    ${PLAYERSBUTTON}
    Element Should Contain     ${PLAYERSTITLE}  Players
    Capture Page Screenshot    screenshots/players-list.png
Assert edit player page
    Wait Until Element Is Visible    ${CURRENTPLAYERBUTTON}
    Element Should Contain      ${EDITPLAYERTITLE}   Edit player
    Capture Page Screenshot    screenshots/player-added.png
Assert add player page
    Wait Until Element Is Visible    ${NAME}
    Title Should Be     Add player
    Capture Page Screenshot    screenshots/add-player-page.png
Assert Matches
    Wait Until Element Is Visible    ${MATCHESBUTTON}
    Element Should Contain      ${EDITADDMATCHTITLE}   Matches player
    Capture Page Screenshot    screenshots/matches-assigned-to-player.png
Assert add maches of player
    Wait Until Element Is Visible    ${MYTEAM}
    Element Should Contain      ${EDITADDMATCHTITLE}   Adding match player
    Capture Page Screenshot    screenshots/add-match-page.png
Clear filled players email
    Wait Until Element Is Visible    ${PLAYERSEMAIL}
    Clear Element Text    ${PLAYERSEMAIL}