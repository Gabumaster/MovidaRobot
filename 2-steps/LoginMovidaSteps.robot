*** Settings ***
Resource        ../3-pages/LoginMovidaPages.robot

*** Keywords ***
Quando realizo a criação da conta
    PreencheDados
    Senha

Então devo logar no site com os dados criados
    Finalizacao