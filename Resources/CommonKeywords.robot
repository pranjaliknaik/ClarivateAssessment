*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/Locators.py

*** Variables ***
${url}      https://www.google.com/
${browserName}      chrome

*** Keywords ***
Open My Browser and Launch Application
        open browser    ${url}      ${browserName}
        maximize browser window
        click element       ${btn_accept}

Close My Broswers
        close all browsers