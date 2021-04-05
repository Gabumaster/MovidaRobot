*** Settings ***
Resource        ../2-steps/LoginMovidaSteps.robot
Resource    ../config.robot
Test Setup        Inicializa Teste
Test Teardown     Fecha Navegador

*** Test Cases ***
Cenario: Cadastrar dados no site da Movida
    Quando realizo a criação da conta
    Então devo logar no site com os dados criados