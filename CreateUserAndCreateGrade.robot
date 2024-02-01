*** Settings ***
Library     SeleniumLibrary
Library     RandomUsernameLibrary.py

*** Variables ***
${BROWSER}             Chrome
${URL}                 https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Username}            name=username
${Password}            name=password
${Button_Login}        //div[@id='app']/div[@class='orangehrm-login-layout']/div[@class='orangehrm-login-layout-blob']//form[@action='/web/index.php/auth/validate']/div[3]/button[@type='submit']    
${Menu_Admin}          //div[@id='app']//aside/nav[@role='navigation']//ul[@class='oxd-main-menu']/li[1]/a[@href='/web/index.php/admin/viewAdminModule']
${Buttun_Add}          //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//div[@class='orangehrm-header-container']/button[@type='button']
${User_Role}           //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']/div/div[1]/div/div[2]/div[@class='oxd-select-wrapper']/div/div[@class='oxd-select-text-input']
${Select_Role}         //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div[2]/div[2]
${Status}              //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']/div/div[3]/div/div[2]/div[@class='oxd-select-wrapper']/div/div[@class='oxd-select-text-input']
${Select_Status}       //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']//div[@role='listbox']/div[2]/span[.='Enabled']
${Employe_Name}        //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']/div/div[2]/div//div[@class='oxd-autocomplete-wrapper']/div/input[@placeholder='Type for hints...']
${Select_Name}         //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div[2]/div
${New_Username}        //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']/div/div[4]/div/div[2]/input
${New_Password}        //div[@id='app']//form[@class='oxd-form']/div[@class='oxd-form-row user-password-row']/div/div[@class='oxd-grid-item oxd-grid-item--gutters user-password-cell']/div//input[@type='password']
${Confirm_Password}    //div[@id='app']//form[@class='oxd-form']/div[@class='oxd-form-row user-password-row']/div/div[@class='oxd-grid-item oxd-grid-item--gutters']/div//input[@type='password']
${Save_User}           //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']//form[@class='oxd-form']//button[@type='submit']
${Job}                 //div[@id='app']//header[@class='oxd-topbar']//nav[@role='navigation']/ul/li[2]//i
${Pay_Grade}           //div[@id='app']//header[@class='oxd-topbar']//nav[@role='navigation']/ul//ul[@role='menu']/li[2]/a[@role='menuitem']
${Add_Grade}           //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//div[@class='orangehrm-header-container']/div/button[@type='button']
${Name_Grade}          //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//form[@class='oxd-form']/div[@class='oxd-form-row']//input
${Save_Grade}          //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']//form[@class='oxd-form']//button[@type='submit']
${Add_Currency}        //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']//div[@class='orangehrm-action-header']/button[@type='button']
${Currency}            //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-card-container']/form[@class='oxd-form']/div[1]//div[@class='oxd-select-wrapper']/div/div[@class='oxd-select-text-input']
${Select_Currency}     //*[@id="app"]/div[1]/div[2]/div[2]/div[2]/form/div[1]/div/div/div/div[2]/div/div[2]/div[139]
${Min_Salary}          //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-card-container']/form[@class='oxd-form']/div[2]/div/div[1]/div/div[2]/input
${Max_Salary}          //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-card-container']/form[@class='oxd-form']/div[2]/div/div[2]/div/div[2]/input
${Save_Currency}       //div[@id='app']/div[@class='oxd-layout']/div[@class='oxd-layout-container']/div[@class='oxd-layout-context']/div[@class='orangehrm-card-container']/form[@class='oxd-form']//button[@type='submit']


*** Test Cases ***
Login dan Tambah Pengguna Baru
    Open Browser     ${URL}    ${BROWSER}
    Wait Until Element Is Visible    ${Username}
    Input Text       ${Username}     admin
    Input Text       ${Password}     admin123
    Click Button     ${Button_Login}
    Wait Until Element Is Visible    ${Menu_Admin}
    Click Element    ${Menu_Admin}
    Wait Until Element Is Visible    ${Buttun_Add}
    Click Button     ${Buttun_Add}
    Wait Until Element Is Visible    ${User_Role}
    Click Element    ${User_Role}
    Click Element    ${Select_Role}
    Click Element    ${Status}
    Click Element    ${Select_Status}
    Input Text       ${Employe_Name}    John Smith
    Sleep    3s
    Click Element    ${Select_Name}
    Sleep    3s
    ${random_username}=    Generate Random Username    Robot
    Set Suite Variable    ${random_username}
    Input Text       ${New_Username}   ${random_username}
    Input Password   ${New_Password}    password123
    Input Password   ${Confirm_Password}    password123
    Click Button     ${Save_User}

Login dan Tambah Pay Grades Baru
    Open Browser     ${URL}    ${BROWSER}
    Wait Until Element Is Visible    ${Username}
    Input Text       ${Username}     ${random_username}
    Input Text       ${Password}     password123
    Click Button     ${Button_Login}
    Wait Until Element Is Visible    ${Menu_Admin}
    Click Element    ${Menu_Admin}
    Wait Until Element Is Visible    ${Job}
    Click Element    ${Job}
    Click Link       ${Pay_Grade}
    Wait Until Element Is Visible    ${Add_Grade}
    Click Button     ${Add_Grade}
    Wait Until Element Is Visible    ${Name_Grade}
    Input Text       ${Name_Grade}    Grade 7
    Click Button     ${Save_Grade}
    Sleep    5s
    Click Button     ${Add_Currency}
    Wait Until Element Is Visible    ${Currency}
    Click Element    ${Currency}
    Sleep    3s
    Scroll Element Into View    ${Select_Currency}
    Click Element    ${Select_Currency}
    Sleep    3s
    Input Text       ${Min_Salary}    10000
    Input Text       ${Max_Salary}    20000
    Click Button     ${Save_Currency}
