##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/MonitoracaoFaturamentoTISSPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
# SMF-52:Pesquisar Monitoração de Faturamento - TISS
Preencher o campo Convênio
    Wait Until Element Is Visible    ${campoConvenioInput}                          120
    SeleniumLibrary.Click Element    ${campoConvenioInput}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoConvenioInput}                          ${campoNumConvenio}
    Sleep                            2
    Capture Screen
    
Selecionar lote que não teve remessa gerada 
    Log To Console                       *** Elemento da Tabela: ${numRemessa}
    Wait Until Element Is Visible        ${CssDivLinhas}                                10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${CssDivLinhas}                  ${numRemessa}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${numRemessa}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Clicar no botão Faturamento 
    Wait Until Element Is Visible              ${btnFaturamento}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnFaturamento}
    Sleep                                      80
    Capture Screen

Selecionar o campo protocolo
    Wait Until Element Is Visible              ${btnProtocolo}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnProtocolo}
    Sleep                                      80
    Capture Screen

Clicar o campo protocolo
    Wait Until Element Is Visible              ${btnSearch}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSearch}
    Sleep                                      80
    Capture Screen

Preencher o campo Número do protocolo

Clicar o botão OK 
    Wait Until Element Is Visible              ${btnSearch}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSearch}
    Sleep                                      80
    Run Keyword If                            '${printscreen}' == '@print'                   Capture Screen

# SMF-284:Imprimir o Relatório de Monitoração de Faturamento
Clicar no botão Rel. rec. Glosas

Realizar o clique no botão Capa de lote