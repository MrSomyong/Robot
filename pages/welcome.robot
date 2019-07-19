*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${URL}  http://automationpractice.com/index.php
${BROWSER}  gc

*** Keywords ***
Open
    Open Browser  ${URL}  browser=${BROWSER}

Choose menu Dresses
    Click Element  //*[@id="block_top_menu"]/ul/li[2]/a

Home
    Go To ${URL}  browser=${BROWSER}