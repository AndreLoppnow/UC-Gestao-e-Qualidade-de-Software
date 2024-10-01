***Settings***
Library     SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/
${BROWSER}    edge
${PRODUTO}    notebook

*** Test Cases ***
Pesquisa de produtos na amazon
    Open Browser    ${URL}    ${BROWSER}
    Input Text    id=twotabsearchtextbox    ${Produto}
    Click Button    id=nav-search-submit-button
    Page Should Contain    ${PRODUTO}
    Close Browser