* Settings *

Resource     ../../../support/base.robot
Resource     ../../../../feature/tests/login_spec/elements/page_login_botoes.robot


*** Keywords ***
acesso menu superior esquerdo
    Wait Until Element Is Visible    ${btn_menu_superior_esquerdo}
    Click Element    ${btn_menu_superior_esquerdo}

acesso menu formularios
    Wait Until Element Is Visible    ${btn_formularios}
    Click Element    ${btn_formularios}
    Wait Until Page Contains    Login

preencho formulario de login
    [Arguments]    ${TEXT1}    ${TEXT2}
    Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}

    Wait Until Element Is Visible    ${campo_email}
    Input Text    ${campo_email}     ${TEXT1}

    Wait Until Element Is Visible    ${campo_senha}
    Input Text    ${campo_senha}     ${TEXT2}

E clico no formulario de login
    Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}
preencho apenas campo email
    [Arguments]    ${TEXT1}
    Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}
    Wait Until Element Is Visible    ${campo_email}
    Input Text    ${campo_email}     ${TEXT1}

preencho apenas campo senha
    [Arguments]    ${TEXT2}
     Wait Until Element Is Visible    ${btn_login}
    Click Element    ${btn_login}
    Wait Until Element Is Visible    ${campo_senha}
    Input Text    ${campo_senha}     ${TEXT2}

valido mensagem de login
    [Arguments]    ${TEXT1}
    Wait Until Element Is Visible    ${btn_entrar}
    Click Element    ${btn_entrar}
    Wait Until Page Contains    ${TEXT1}    5

