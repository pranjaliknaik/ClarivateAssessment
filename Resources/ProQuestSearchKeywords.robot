*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Variables ***
${searchTerm}       QA


*** Keywords ***

ClickOnProQuestLink
        #waiting for the link to be clickable and then click
        wait until element is enabled       ${link_proQuestPage}
        click link    ${link_proQuestPage}

RejectTheCookies
        #waiting the reject button to be clickable and the click
        wait until element is enabled    ${btn_RejectAll}
        click button    ${btn_RejectAll}

ClickOnProQuestSearchBar
        #waiting for the search bar to be enabled and the pass the input
        wait until element is enabled       ${txt_ProQuestSearch}
        input text    ${txt_ProQuestSearch}      ${searchTerm}
        press keys      ${txt_ProQuestSearch}       RETURN
        sleep    2s
        capture page screenshot         ../output/AfterProQuestSearch.png


