*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Variables    ../PageObjects/Locators.py

*** Variables ***
${titles}
${file_name}      AllLinkTitles.txt
${folder_name}    Desktop

*** Keywords ***

Enter Search Text and Enter
        [Arguments]    ${searchContent}

        #Wait for the element to be visible and enabled
        element should be enabled       ${txt_search}
        input text   ${txt_search}      ${searchContent}
        press keys    ${txt_search}     RETURN


GetAllLinks
        #waiting for all the links to be loaded
        Wait Until Page Contains Element    ${links_firstPage}
        ${titles}=    get webelements    ${links_firstPage}
        StoreLinksInTxtFile    ${titles}

StoreLinksInTxtFile
        [Arguments]     ${titles}
        #Finding the local path
        ${home_dir}=    Get Environment Variable    USERPROFILE
        Run Keyword If    r'${home_dir}' == ''    ${home_dir}=    Get Environment Variable    HOME
        ${desktop_path}=    Join Path    ${home_dir}    ${folder_name}
        ${file_path}=    Join Path    ${desktop_path}    ${file_name}

        #Looping through the titles and adding them in a text file
        FOR    ${element}    IN    @{titles}
            ${title}=    get text    ${element}
            Run Keyword If    '${title.strip()}' != ''       Append To File    ${file_path}     ${title}\n      encoding=UTF-8
        END