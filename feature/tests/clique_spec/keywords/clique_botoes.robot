* Settings *

Resource     ../../../support/base.robot
Resource     ../elements/page_clique_botoes.robot


*** Keywords ***
que esteja na tela de clique em botoes
    Wait Until Element Is Visible    ${btn_QAX}
    Click Element    ${btn_QAX}

clicar no botao clique simples
    Wait Until Element Is Visible    ${btn_clique_simples}
    Click Element    ${btn_clique_simples}
    Wait Until Element Is Visible    ${btn_clique_simples2}
    Click Element    ${btn_clique_simples2}

clicar no botao clique longo
    Wait Until Element Is Visible    ${btn_clique_longo}
    Click Element    ${btn_clique_longo}
    Wait Until Element Is Visible    ${btn_clique_longo2}

valido mensagem de sucesso
    [Arguments]    ${TEXT}
    Long Press    ${btn_clique_longo2}    duration=10

    Text Should Be Visible    ${TEXT}
    Wait Until Page Contains    Botão clique longo    ${GLOBAL_TIMEOUT}
    Wait Until Page Contains    CLIQUE LONGO          ${GLOBAL_TIMEOUT}

valido mensagem de sucesso clique longo
    [Arguments]    ${TEXT}
    ${Positions}                Get Element Location       ${btn_clique_longo2}      
    Tap With Positions          1000                       ${${Positions}[x], ${Positions}[y]}
    Wait Until Page Contains    ${TEXT}
    Wait Until Page Contains    Botão clique longo    ${GLOBAL_TIMEOUT}
    Wait Until Page Contains    CLIQUE LONGO          ${GLOBAL_TIMEOUT}
