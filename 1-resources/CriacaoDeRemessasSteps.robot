##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/CriacaoDeRemessasPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Preencher os campos convenio "${numConvenio}", plano "${numPlano}", origem "${origem}", data inicial "${dataInicial}" e data final "${dataFinal}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                               120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoConvenio}                               ${numConvenio}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoPlano}                                  15
    Sleep                                      3
    Click Element                              ${campoPlano}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoPlano}                                 ${numPlano}
    Sleep                                      1 

    Click Element                              ${campoOrigem}
    Sleep                                      1 
    Wait Until Element Is Visible              ${campoOrigem}                                 15
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoOrigem}                                ${origem}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataInicial}                            15
    Click Element                              ${campoDataInicial}            
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoDataInicial}                           ${dataInicial}
    Sleep                                      5

    Click Element                              ${campoDataFinal}            
    Wait Until Element Is Visible              ${campoDataFinal}                              15
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoDataFinal}                             ${dataFinal}
    Sleep                                      3
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar no Botão Pesquisar
    Wait Until Element Is Visible              ${btnPesquisar}                              15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnPesquisar}
    Sleep                                      80

Clicar na aba Ambulatório${printscreen}
    Wait Until Element Is Visible              ${abaAmbulatorio}                            30
    SeleniumLibrary.Click Element              ${abaAmbulatorio}
    Sleep                                      5

Clicar no botão Criação de Remessa
    SeleniumLibrary.Click Element              ${campoBtnCriacaoRemessa}
    Sleep                                      5

Clicar no botão Confirmar${printscreen} 
    Wait Until Element Is Visible              ${modalConfirmacaoRemessa}                   10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnConfirmarCriacaoRemessa}
    Sleep                                      5
    Capture Page Screenshot
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher campos "${numConvenio}", plano "${numPlano}"", origem "${origem}", data inicial "${dataInicial}", data final "${dataFinal}" e selecionar o Tipo de Atendimento Ambulatorial "${valorCampoAtendCombobox}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                             120
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenio}                             ${numConvenio}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoPlano}                                60
    Sleep                                      3
    Click Element                              ${campoPlano}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoPlano}                                ${numPlano}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoOrigem}                               60
    Sleep                                      3
    Click Element                              ${campoOrigem}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoOrigem}                               ${origem}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataInicial}                          60
    Sleep                                      3
    Click Element                              ${campoDataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataInicial}                          ${dataInicial}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataFinal}                            60
    Sleep                                      3
    Click Element                              ${campoDataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataFinal}                            ${dataFinal}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoAtendOpcao}                          120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${campoAtendOpcao}
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoAtendOpcao}                          ${valorCampoAtendCombobox}
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher campos "${numConvenio}", plano "${numPlano}"", origem "${origem}", data inicial "${dataInicial}", data final "${dataFinal}" e selecionar o Tipo de Atendimento Hospitalar "${valorCampoAtendCombobox}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                               120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoConvenio}                              ${numConvenio}
    Sleep                                      1


    Wait Until Element Is Visible              ${campoPlano}                          60
    Sleep                                      3
    Click Element                              ${campoPlano}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoPlano}                          ${numPlano}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoOrigem}                         60
    Sleep                                      3
    Click Element                              ${campoOrigem}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoOrigem}                         ${origem}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataInicial}                    60
    Sleep                                      3
    Click Element                              ${campoDataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataInicial}                     ${dataInicial}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataFinal}                       60
    Sleep                                      3
    Click Element                              ${campoDataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataFinal}                      ${dataFinal}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoAtendOpcao}                            120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${campoAtendOpcao}
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoAtendOpcao}                            ${valorCampoAtenCombobox}
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen



Realizar o preenchimento do campo convenio "${numConvenio}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                              60
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoConvenio}                              ${numConvenio}
    Sleep                                      1
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar na aba plano${printscreen}
    Wait Until Element Is Visible              ${abaPlano}                                    30
    SeleniumLibrary.Click Element              ${abaPlano}
    Sleep                                      5
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Fazer o preenchimento dos campos da aba Plano "${numPlano}"${printscreen}
    Wait Until Element Is Visible              ${abaPlanoInputSelecionarPlano}                60
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${abaPlanoInputSelecionarPlano}               ${numPlano}
    Sleep                                      1
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher o campo Convênio "${numConvenio}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                               80
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoConvenio}                              ${numConvenio}
    Sleep                                      1
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar na aba Origem${printscreen}
    Wait Until Element Is Visible              ${abaOrigem}                                    30
    SeleniumLibrary.Click Element              ${abaOrigem}
    Sleep                                      5
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher Campo Selecionar na aba Origem "${origem}"${printscreen}
    Wait Until Element Is Visible              ${abaOrigemInputSelecionarOrigem}              60
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${abaOrigemInputSelecionarOrigem}             ${origem}
    Sleep                                      1
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher campos "${numConvenio}", "${qtdeContas}", "${dataInicial}", "${dataFinal}", "${origem}" e "${valorCampoAtendCombobox}"${printscreen}
    Wait Until Element Is Visible              ${campoConvenio}                              80
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoConvenio}                              ${numConvenio}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoQtdeContas}                            10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${campoQtdeContas}
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoQtdeContas}                            ${qtdeContas}

    Wait Until Element Is Visible              ${campoDataInicial}                           60
    Sleep                                      3
    Click Element                              ${campoDataInicial}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataInicial}                           ${dataInicial}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoDataFinal}                             60
    Sleep                                      3
    Click Element                              ${campoDataFinal}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoDataFinal}                              ${dataFinal}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoOrigem}                                 60
    Sleep                                      3
    Click Element                              ${campoOrigem}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoOrigem}                                ${origem}
    Sleep                                      1

    Wait Until Element Is Visible              ${campoAtendOpcao}                            120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${campoAtendOpcao}
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoAtendOpcao}                            ${valorCampoAtendCombobox}
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher Competência "${dataCompetenciaPlano}" em Plano "${dataInicioPlano}", "${dataFinalPlano}"${printscreen}
    Wait Until Element Is Visible             ${campoCompetenciaRemessa}                      60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${campoCompetenciaRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${campoCompetenciaRemessa}                      ${dataCompetenciaPlano}
    
    Wait Until Element Is Visible             ${dataInicioRemessa}                           60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${dataInicioRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${dataInicioRemessa}                            ${dataInicioPlano}
  
    Wait Until Element Is Visible             ${dataFinalRemessa}                            60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${dataFinalRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${dataFinalRemessa}                            ${dataFinalPlano}
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Preencher Competência Origem "${dataCompetenciaOrigem}", "${dataInicioOrigem}", "${dataFinalOrigem}"${printscreen}
    Wait Until Element Is Visible             ${campoCompetenciaRemessa}                      60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${campoCompetenciaRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${campoCompetenciaRemessa}                      ${dataCompetenciaOrigem}
    
    Wait Until Element Is Visible             ${dataInicioRemessa}                           60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${dataInicioRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${dataInicioRemessa}                            ${dataInicioOrigem}
  
    Wait Until Element Is Visible             ${dataFinalRemessa}                            60
    Sleep                                      1
    SeleniumLibrary.Click Element             ${dataFinalRemessa}
    Sleep                                      1
    SeleniumLibrary.Input Text                ${dataFinalRemessa}                             ${dataFinalOrigem}
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

