##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/FaturaIndividualPorDataPage.robot

### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot
Resource    ../Config.robot

*** Variable ***

*** Keywords ***
# SMF-55:Imprimir Fatura Guias TISS
Preencher campo Período com data inicial e data final${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF55}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF55}
    Sleep                                      10
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Clicar no botão Imprimir Fatura Guias TISS${printscreen}
    Wait Until Element Is Visible              ${btnImprimirGuiaTISS}                 60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimirGuiaTISS}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Definir a Guia que será Impressa com o checkbox - SMF55${printscreen}
    Wait Until Element Is Visible              ${radioBtnGuiaDeSPSADT}                 180
    Sleep                                      1
    SeleniumLibrary.Click Element              ${radioBtnGuiaDeSPSADT}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen
    Capture Screen

Clicar no botão 1 - Imprimir${printscreen}
    Wait Until Element Is Visible              ${btnImprimir}                         180
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimir}
    Sleep                                      10
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

# SMF-5925:Imprimir Fatura Individual por Data informando o periodo
Realizar o preenchimento do campo Período com data inicial e data final - SMF5925${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF5925}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF5925}
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Realizar o clique no botão Imprimir Fatura Guias TISS${printscreen}
    Wait Until Element Is Visible              ${btnImprimirGuiaTISS}                 60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimirGuiaTISS}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Informar a Guia que será Impressa marcando checkbox - SMF5925${printscreen}
    Wait Until Element Is Visible              ${radioBtnResumoInternacao}                 60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${radioBtnResumoInternacao}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Clicar no botão 1 - Imprimir - SMF5925${printscreen}
    Wait Until Element Is Visible              ${btnImprimir}                         180
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimir}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-5942:Imprimir relatórios de fechamento de contas por Convênio
Fazer o preenchimento do campo Período com data inicial e data final e convênio - SMF5942${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF5942}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF5942}

    Wait Until Element Is Visible              ${campoConvenio}                      15
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenio}                      ${numConvenioSMF5942}
    Sleep                                      1 
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Clicar no botão Imprimir Fatura${printscreen}
    Wait Until Element Is Visible              ${btnImprimirFatura}                         180
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimirFatura}
    Sleep                                      60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-5944:Consultar por convênio e Data de Alta que não possui faturas para serem emitidas
Preencher o campo Convênio da fatura com um dado válido${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                      120
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenio}                      ${numConvenioSMF5944}
    Sleep                                      1 
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-5950:Imprimir Fatura Individual por Data informando o pelo número da Conta
O usuário deverá clicar na aba Contas${printscreen}
    Wait Until Element Is Visible              ${abaContas}                                 120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${abaContas}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Conta> "${numConvTable}"${printscreen}
    Wait Until Element Is Visible        ${campoConta}                                 60
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConta}                                 ${numContaSMF5950}
    Sleep                                60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-5953:Imprimir Fatura Individual por Data informando o pela Origem do Atendimento
O usuário deverá clicar na aba Origem${printscreen}
    Wait Until Element Is Visible              ${abaOrigem}                                 120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${abaOrigem}
    Sleep                                      60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Origem> "${campoOrigem}"${printscreen}
    Wait Until Element Is Visible        ${campoOrigem}                                 60
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoOrigem}                                 ${numOrigem}
    Sleep                                60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Clique no botão Pesquisar${printscreen}
    Wait Until Element Is Visible              ${btnPesquisar}                              15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnPesquisar}
    Sleep                                      80
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Clicar no botão executar
    Wait Until Element Is Visible              ${btnExecutar}                               100
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExecutar}
    Sleep                                      80
    Capture Screen

# SMF-5954:Imprimir Fatura Individual por Data informando o numero do Atendimento
O usuário deverá clicar na aba Atendimento${printscreen}
    Wait Until Element Is Visible              ${abaAtendimento}                            120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${abaAtendimento}
    Sleep                                      10
    Capture Screen
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen
    
Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Atendimento> "${numAtend}"${printscreen}
    Wait Until Element Is Visible        ${numAtendimento}                                60
    Sleep                                1
    SeleniumLibrary.Input Text           ${numAtendimento}                               ${numAtend}
    Sleep                                60
    Capture Screen
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-6021:Imprimir Fatura Individual por Data informando o Tipo de conta
Informar Período com Data Inicial e Data final${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF6021}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF6021}
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Informar o tipo da conta${printscreen}
    Wait Until Element Is Visible        ${tipoConta}                            45
    Sleep                                1
    SeleniumLibrary.Input Text           ${tipoConta}                           ${tipoDaConta}
    Sleep                                60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-6025:Imprimir relatórios de faturamento com exceção dos convênios selecionados
Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convênio> "${campoConvenio}"${printscreen}
    Wait Until Element Is Visible        ${campoConvenio2}                                120
    Sleep                                1
    Click Element                        ${campoConvenio2}
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConvenioTable}                               ${numConvTable}
    Sleep                                60
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-6034:Reimprimir Fatura Individual por Data informando o periodo
Preencher campo Período${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF6034}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF6034}
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Marcar checkbox fechadas${printscreen}
    Wait Until Element Is Visible              ${checkboxFechadas}                            60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${checkboxFechadas}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

# SMF-6035:Fechar contas sem imprimir Faturas
Escrever no campo Período - SMF-6035${printscreen}
    Wait Until Element Is Visible              ${dataInicial}                        120
    Sleep                                      3
    Click Element                              ${dataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataInicial}                        ${dataInicialSMF6035}
    Sleep                                      1 

    Wait Until Element Is Visible              ${dataFinal}                          15
    Sleep                                      3
    Click Element                              ${dataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${dataFinal}                          ${dataFinalSMF6035}
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Marcar o checkbox Fechar contas sem Imprimir Faturas${printscreen}
    Wait Until Element Is Visible              ${checkboxSMF6035}                            60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${checkboxSMF6035}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'           Capture Screen

Capturar fatura impressa${printscreen}
    Sleep                                      10
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen