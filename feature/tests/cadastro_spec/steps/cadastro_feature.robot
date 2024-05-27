language: pt-BR
* Settings *
Resource        ../../../support/base.robot
Resource        ../../../../feature/tests/login_spec/keywords/login.robot
Resource        ../../clique_spec/steps/clique_feature.robot
Resource        ../../clique_spec/keywords/clique_botoes.robot
Resource        ../keywords/cadastro.robot

Test Setup      Abrir App Local Android
Test Teardown   Fechar App


*** Test Cases ***
CT01- Cenario: Validar fluxo de cadastro de conta com sucesso
    [Tags]    ct_cadastro
    [Documentação]    Teste que validar cadastro de conta com sucesso
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencher formulario de cadastro    TE    vi@gmail.com    12345
    Então valido mensagem de cadastro de conta        Tudo certo, boas vindas ao Yodapp!

CT02- Cenario: Validar fluxo de cadastro de conta com campo todos os campos em branco
    [Tags]    ct_cadastro
    [Documentação]    validar mensagem de erro sobre campos em branco
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    E clico no formulario de cadastro
    Então valido mensagem de cadastro de conta    Seu nome você deve informar!

CT03- Cenario: Validar fluxo de cadastro com dados de email invalido
    [Tags]    ct_cadastro
    [Documentação]    Teste que valida cadastro de conta com email invalido
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencher formulario de cadastro    TE    vi.com    12345
    Então valido mensagem de cadastro de conta        Email válido você deve informar!

CT04- Cenario: Validar fluxo de cadastro com dados de senha em branco
    [Tags]    ct_cadastro
    [Documentação]    Teste que valida cadastro de conta com compo senha em branco
    Dado que esteja na tela de clique em botoes
    E acesso menu superior esquerdo
    E acesso menu formularios
    Quando preencher todos os campos menos senha    TE     vi@gmail.com
    Então valido mensagem de cadastro de conta        Uma senha você deve informar!
