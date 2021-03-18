##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ConfiguracaoDePrecoSIMPROPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${ConfiguracaoDePrecoSIMPROPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROExecutarBtn}  
    Sleep                            4
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROApagarBtn}                        120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROApagarBtn}
    Sleep                            2
    Capture Screen  

Usuário deverá informar no campo <Tabela> "${tabelaSIMPRO}" um codigo de tabela que não existe
    Sleep                            4
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROCodTabela}         120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROCodTabela}
    Sleep                            1
    SeleniumLibrary.Input Text       ${ConfiguracaoDePrecoSIMPROCodTabela}         ${tabelaSIMPRO}
    Capture Screen
    
Usuário deverá selecionar no campo <Tipo do Valor>"${dadosValorSIMPRO}" o tipo que será cobrado o valor do procedimento
    Sleep                            2
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROValorClick}          120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROValorClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${ConfiguracaoDePrecoSIMPROValorInput}          ${dadosValorSIMPRO}
    Capture Screen

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROAvisoOkBtn}
    Sleep                            2
    Capture Screen

Usuário deverá selecionar no campo <Procedimento> "${dadosProcedimentosSIMPRO}" o codigo do procedimento da tabela SIMPRO
    Sleep                            4
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROProcedimentosClick}         120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROProcedimentosClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${ConfiguracaoDePrecoSIMPROValorProcedimentosInput}         ${dadosProcedimentosSIMPRO}
    Capture Screen

Usuário deverá inserir no campo <Medicamento> "${dadosMedicamentosSIMPRO}" o código do Medicamento SIMPRO
    Sleep                            4
    Wait Until Element Is Visible    ${ConfiguracaoDePrecoSIMPROMedicamentosClick}         120
    SeleniumLibrary.Click Element    ${ConfiguracaoDePrecoSIMPROMedicamentosClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${ConfiguracaoDePrecoSIMPROMedicamentosInput}         ${dadosMedicamentosSIMPRO}
    Capture Screen


#
