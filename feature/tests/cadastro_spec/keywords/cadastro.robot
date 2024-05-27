* Settings *

Resource     ../../../support/base.robot
Resource     ../../../../feature/tests/cadastro_spec/elements/page_cadastro.robot


*** Keywords ***
preencher todos os campos menos senha
    [Arguments]    ${TEXT1}    ${TEXT2}
    Wait Until Element Is Visible    ${btn_cadastro}
    Click Element    ${btn_cadastro}

    Wait Until Element Is Visible    ${campo_nome}

    Input Text    ${campo_nome}     ${TEXT1}

    Wait Until Element Is Visible    ${campo_email}

    Input Text    ${campo_email}     ${TEXT2}

    Click Element    ${checkbox_nivel}
    Wait Until Element Is Visible    ${checkbox_nivel_padawan}
    Click Element    ${checkbox_nivel_padawan}
preencher formulario de cadastro
    [Arguments]    ${TEXT1}    ${TEXT2}    ${TEXT3}
    Wait Until Element Is Visible    ${btn_cadastro}
    Click Element    ${btn_cadastro}

    Wait Until Element Is Visible    ${campo_nome}

    Input Text    ${campo_nome}     ${TEXT1}

    Wait Until Element Is Visible    ${campo_email}

    Input Text    ${campo_email}     ${TEXT2}

    Wait Until Element Is Visible    ${campo_senha}

    Input Text    ${campo_senha}     ${TEXT3}
    
    Click Element    ${checkbox_nivel}
    Wait Until Element Is Visible    ${checkbox_nivel_padawan}
    Click Element    ${checkbox_nivel_padawan}


clico no formulario de cadastro
     Wait Until Element Is Visible    ${btn_cadastro}
    Click Element    ${btn_cadastro}
valido mensagem de cadastro de conta
    [Arguments]    ${TEXT1}
    Wait Until Element Is Visible    ${btn_cadastrar}
    Click Element    ${btn_cadastrar}
    Wait Until Page Contains    ${TEXT1}    5
