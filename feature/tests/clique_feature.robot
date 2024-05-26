language: pt-BR
* Settings *

Resource     clique_spec/keywords/clique_botoes.robot

Test Setup      Abrir App Local Android
Test Teardown   Fechar App


*** Test Cases ***
CT01- Cenario: Validar clique simples
    [Tags]    ct_simples
    [Documentação]    Teste que valida a mensagem de sucesso após clicar em clique simples
    Dado que esteja na tela de clique em botoes
    Quando clicar no botao clique simples
    Então valido mensagem de sucesso    Isso é um clique simples

CT02- Cenario: Validar clique Longo
    [Tags]    ct_longo
    [Documentação]    Teste que valida a mensagem de sucesso após clicar em clique Longo
    Dado que esteja na tela de clique em botoes
    Quando clicar no botao clique longo
    Então valido mensagem de sucesso clique longo    Isso é um clique longo

