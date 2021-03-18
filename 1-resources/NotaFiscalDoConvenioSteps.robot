##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/NotaFiscalDoConvenioPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${NotaFiscalDoConvenioPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioExecutarBtn}  
    Sleep                            4
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioApagarBtn}                        120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioApagarBtn}
    Sleep                            2
    Capture Screen  

# SMF-4764:Gerar Nota Fiscal de Convênio

Usuário deverá informar o <Convênio> "${codConvenio}"
    Sleep                            4
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioCodConvenio}         120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioCodConvenio}
    Sleep                            1
    SeleniumLibrary.Input Text       ${NotaFiscalDoConvenioCodConvenio}         ${codConvenio}
    Capture Screen
    
Usuário deverá informar o <Remessa> "${valorRemessa}"
    Sleep                            2
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioValorRemessaClick}          120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioValorRemessaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${NotaFiscalDoConvenioValorRemessaInput}          ${valorRemessa}
    Capture Screen

Clicar no botão [Concluir]
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioConcluirBtn}                        120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioConcluirBtn}
    Sleep                            2
    Capture Screen  

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioAvisoOkBtn}
    Sleep                            2
    Capture Screen

    
#####################################################################################################
# SMF-4767:Gerar Nota Fiscal de Convênio com desconto

Usuário deverá informar o <Desconto> 
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioDescontoClick}         120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioDescontoClick}
    Sleep                            2
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioSelecionaDesconto}        
    Sleep                            1
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioDescontoClickOK}
    Capture Screen

Usuário deverá informar o <Valor> "${valorDesconto}" do Desconto
    Sleep                            4
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioValorDescontoClick}         120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioValorDescontoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${NotaFiscalDoConvenioValorDescontoInput}         ${valorDesconto}
    Capture Screen


#######################################################################################################
# SMF-4768 : Gerar Nota Fiscal de Convênio com Acréscimo

Usuário deverá informar o <Acréscimo> 
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioAcrescimoClick}         120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioAcrescimoClick}
    Sleep                            2
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioSelecionaAcrescimo}        
    Sleep                            1
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioAcrescimoClickOK}
    Capture Screen


Usuário deverá informar o <Valor> "${valorAcrescimo}" do Acréscimo
    Sleep                            4
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioValorAcrescimoClick}         120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioValorAcrescimoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${NotaFiscalDoConvenioValorAcrescimoInput}         ${valorAcrescimo}
    Capture Screen


#######################################################################################################
# SMF-48 : Pesquisar Nota Fiscal de Convênio 
Clicar na aba 'Resumo'
    Sleep                            2
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioResumoAba}          120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioResumoAba}
    Sleep                            3
    Capture Screen

Clicar no botão [Seguinte]
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioContaBtn}           120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioContaBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Imprimir NF]
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioContaBtn}           120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioContaBtn}
    Sleep                            2
    Capture Screen

Clicar no Aviso [Sim]
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioContaBtn}           120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioContaBtn}
    Sleep                            2
    Capture Screen

Clicar no Aviso [Imprimir]
    Sleep                            3
    Wait Until Element Is Visible    ${NotaFiscalDoConvenioContaBtn}           120
    SeleniumLibrary.Click Element    ${NotaFiscalDoConvenioContaBtn}
    Sleep                            2
    Capture Screen


#######################################################################################################
