language: pt-BR
* Settings *
Resource        ../../../support/base.robot
Resource        ../../../../feature/tests/login_spec/keywords/login.robot
Resource        ../../clique_spec/steps/clique_feature.robot
Resource        ../../clique_spec/keywords/clique_botoes.robot

Test Setup      Abrir App Local Android
Test Teardown   Fechar App
Force Tags       todos



*** Test Cases ***
CT01- Cenario: Validar fluxo de login com sucesso
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de sucesso após logar
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencho formulario de login    vitor@gmail.com    12345678
    Então valido mensagem de login    login com suesso

CT02- Cenario: Validar fluxo de login com dados invalidos
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de sucesso após logar
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencho formulario de login    vitorino@gmail.com    vitorin0
    Então valido mensagem de login    Oops! Credenciais incorretas.

CT02- Cenario: Validar fluxo de login com dados em branco
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de erro quando usuario não preencher nenhum campo
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    E clico no formulario de login
    Então valido mensagem de login    Email válido você deve informar!

CT03- Cenario: Validar fluxo de login com dados de email em branco
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de erro quando usuario não preencher o campo email
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencho apenas campo email    tito@gmail.campo
    Então valido mensagem de login    Uma senha você deve informar!

CT04- Cenario: Validar fluxo de login com dados de senha em branco
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de erro quando usuario não preencher o campo senha
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencho apenas campo senha    987654321
    Então valido mensagem de login    Email válido você deve informar!

CT05- Cenario: Validar fluxo de login com dados de email invalido
    [Tags]    ct_login
    [Documentação]    Teste que valida a mensagem de erro quando usuario não preencher o campo email com email valido
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencho formulario de login    vitorino.com    vitorin0
    Então valido mensagem de login    Email válido você deve informar!
    

