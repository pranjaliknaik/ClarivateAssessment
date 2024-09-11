*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/GoogleSearchKeywords.robot
Resource    ../Resources/CommonKeywords.robot
Resource    ../Resources/ProQuestSearchKeywords.robot

Suite Setup     Open My Browser and Launch Application
Suite Teardown    Close My Broswers

*** Variables ***

${searchContent}        ProQuest


*** Test Cases ***
GoToGoogleAndSearch
    Enter Search Text and Enter         ${searchcontent}


GetAllLinkTitles
    GetAllLinks


OpenProQuestSiteAndSearch
    ClickOnProQuestLink
    RejectTheCookies
    ClickOnProQuestSearchBar



