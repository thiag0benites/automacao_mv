##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ContaDoAtendimentoHospitalarPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
#SMF-68:Consultar Atendimento de Contas Hospitalares Aberta
Informar código do atendimento "${codAtendimento}"
    Wait Until Element Is Visible              ${campoAtendimento}              120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${campoAtendimento}              ${codAtendimento}
    Sleep                                      1

Clicar no botão executar
    Wait Until Element Is Visible              ${btnExecutar}                   10
    Click Element                              ${btnExecutar}
    Sleep                                      7
    Capture Screen

Clicar no botão Adicionar 
    Wait Until Element Is Visible              ${btnAdicionar}                  10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      60
    Capture Screen

Selecionar uma conta aberta vinculada ao atendimento consultado 
    Log To Console                       *** Elemento da Tabela: ${numeroContaAberta}
    Wait Until Element Is Visible        ${ContasCssDivLinhasResultadoClickTable}        10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${ContasCssDivLinhasResultadoClickTable}      ${numeroContaAberta}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${numeroContaAberta}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Selecionar a conta desejada do atendimento hospitalar "${numeroContaAberta}"
    Log To Console                       *** Elemento da Tabela: ${numeroContaAberta}
    Wait Until Element Is Visible        ${ContasCssDivLinhasResultadoClickTable}        10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${ContasCssDivLinhasResultadoClickTable}      ${numeroContaAberta}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${numeroContaAberta}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Clicar no botão serviços
    Wait Until Element Is Visible              ${btnServicos}                    15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnServicos}
    Sleep                                      80

Inserir informações no campo: <Grupo> "${numGrupo}", <Proced> "${numProced}", <Qtde.> "${campoQtde}", <Setor> "${campoSetor}", <Setor E.> "${campoSetorE}", <Prest.> "${campoPrest}", <Ativ.> "${campoAtiv}"
    Wait Until Element Is Visible    ${campoGrupoXpath}                          120
    SeleniumLibrary.Click Element    ${campoGrupoXpath}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoGrupoXpath}                          ${numGrupo}
    Sleep                            3

    Wait Until Element Is Visible              ${btnAdicionar}                              10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      15
    Capture Screen
    Wait Until Element Is Visible        ${campoProcedXpathInput}                 5
    SeleniumLibrary.Input Text           ${campoProcedXpathInput}                 ${numProced}


    Wait Until Element Is Visible              ${btnAdicionar}                    10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      15
    Wait Until Element Is Visible              ${btnAdicionar}                    10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      15
    
    Wait Until Element Is Visible              ${btnOK}                    20
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnOK}
    Sleep                                      15
    Wait Until Element Is Visible        ${campoQtdeXpathInput}                    5
    SeleniumLibrary.Input Text           ${campoQtdeXpathInput}                    ${campoQtde}
    Capture Screen
    Sleep                            1

    Wait Until Element Is Visible              ${btnAdicionar}                    10
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      1
    Wait Until Element Is Visible              ${btnSim}                    20
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSim}
    Sleep                                      15
    # Wait Until Element Is Visible              ${btnSim}                    20
    # Sleep                                      1
    # SeleniumLibrary.Click Element              ${btnSim}
    # Sleep                                      15

    # Wait Until Element Is Visible    ${campoSetorXpathInput}                          5
    # SeleniumLibrary.Click Element    ${campoSetorXpathInput}
    # Sleep                            1
    # SeleniumLibrary.Input Text       ${campoSetorXpathInput}                     ${campoSetor}
    # Capture Screen
    # Sleep                            1

    # Wait Until Element Is Visible              ${btnAdicionar}                    10
    # Sleep                                      1
    # SeleniumLibrary.Click Element              ${btnAdicionar}
    # Sleep                                      15
    # Wait Until Element Is Visible    ${campoSetorEXpathInput}                          30
    # SeleniumLibrary.Click Element    ${campoSetorEXpathInput}
    # Sleep                            1
    # SeleniumLibrary.Input Text       ${campoSetorEXpathInput}                    ${campoSetorE}
    # Capture Screen
    # Sleep                            1

 
    # Wait Until Element Is Visible              ${btnAdicionar}                    10
    # Sleep                                      1
    # SeleniumLibrary.Click Element              ${btnAdicionar}
    # Sleep                                      15
    # SeleniumLibrary.Click Element    ${campoPrestXpathInput}
    # Sleep                            1
    # SeleniumLibrary.Input Text       ${campoPrestXpathInput}                     ${campoPrest}
    # Capture Screen
    # Sleep                            1

    # Wait Until Element Is Visible              ${btnAdicionar}                    10
    # Sleep                                      1
    # SeleniumLibrary.Click Element              ${btnAdicionar}
    # Sleep                                      15
    # Wait Until Element Is Visible    ${campoAtivXpathInput}                          30
    # SeleniumLibrary.Click Element    ${campoAtivXpathInput}
    # Sleep                            1
    # SeleniumLibrary.Input Text       ${campoAtivXpathInput}                      ${campoAtiv}
    # Capture Screen
    # Sleep                            1


Inserir Equipe Médica


Inserir informações no campo: <Código> "${campoCodigoMedico}", <Médico> "${nomeMedico}"
    Wait Until Element Is Visible    ${campoCodTable}                          60
    SeleniumLibrary.Click Element    ${campoCodTable}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoCodTable}                          ${campoCodigoMedico}
    Sleep                            3

    Wait Until Element Is Visible    ${numMed}                                  120
    SeleniumLibrary.Click Element    ${numMed}
    Sleep                            1
    SeleniumLibrary.Input Text       ${numMedInput}                            ${nomeMedico}
    Sleep                            3

Clique no botão Salvar
    Wait Until Element Is Visible              ${btnSalvar}                      60
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnSalvar}
    Sleep                                      25
    Wait Until Element Is Visible              ${btnSim}                    20
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSim}
    Sleep                                      15

# Inserir informações no campo: <Grupo> "${numGrupo}", <Proced> "${numProced}", <Qtde.> "${campoQtde}", <Setor> "${campoSetor}", <Setor E.> "${campoSetorE}", <Prest.> "${campoPrest}", <Ativ.> "${campoAtiv}" - SMF931
#     Wait Until Element Is Visible    ${campoGrupoXpath}                          120
#     SeleniumLibrary.Click Element    ${campoGrupoXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoGrupoXpath}                          ${numGrupoSMF931}
#     Capture Screen

#     Wait Until Element Is Visible              ${btnAdicionar}                              10
#     Sleep                                      1
#     SeleniumLibrary.Click Element              ${btnAdicionar}
#     Sleep                                      15
#     Capture Screen
#     SeleniumLibrary.Click Element    ${campoProcedXpathInput}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoProcedXpathInput}                    ${numProcedSMF931}
#     Capture Screen

#     Wait Until Element Is Visible              ${btnAdicionar}                              10
#     Sleep                                      1
#     SeleniumLibrary.Click Element              ${btnAdicionar}
#     Sleep                                      15
#     Capture Screen
#     SeleniumLibrary.Click Element    ${campoQtdeXpathInput}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoQtdeXpathInput}                     ${campoQtdeSMF931}
#     Capture Screen
#     Wait Until Element Is Visible              ${btnAdicionar}                              10
#     Sleep                                      1
#     SeleniumLibrary.Click Element              ${btnAdicionar}
#     Sleep                                      15

#     Wait Until Element Is Visible              ${btnSim}                                    20
#     Sleep                                      1
#     SeleniumLibrary.Click Element              ${btnSim}
#     Sleep                                      15
#     Capture Screen
#     Wait Until Element Is Visible              ${btnSim}                                    30
#     Sleep                                      1
#     SeleniumLibrary.Click Element              ${btnSim}
#     Sleep                                      15
#     Capture Screen

#     # SeleniumLibrary.Click Element    ${campoSetorXpathInput}
#     # Sleep                            1
#     # SeleniumLibrary.Input Text       ${campoSetorXpathInput}                     ${campoSetorSMF931}
#     # Capture Screen

#     # Wait Until Element Is Visible              ${btnAdicionar}                              10
#     # Sleep                                      1
#     # SeleniumLibrary.Click Element              ${btnAdicionar}
#     # Sleep                                      15
#     # Capture Screen
#     # SeleniumLibrary.Click Element    ${campoSetorEXpathInput}
#     # Sleep                            1
#     # SeleniumLibrary.Input Text       ${campoSetorEXpathInput}                    ${campoSetorESMF931}
#     # Capture Screen

#     # Wait Until Element Is Visible              ${btnAdicionar}                              10
#     # Sleep                                      1
#     # SeleniumLibrary.Click Element              ${btnAdicionar}
#     # Sleep                                      15
#     # Capture Screen
#     # SeleniumLibrary.Click Element    ${campoPrestXpathInput}
#     # Sleep                            1
#     # SeleniumLibrary.Input Text       ${campoPrestXpathInput}                     ${campoPrestSMF931}
#     # Capture Screen
#     # Wait Until Element Is Visible              ${btnAdicionar}                              10
#     # Sleep                                      1
#     # SeleniumLibrary.Click Element              ${btnAdicionar}
#     # Sleep                                      15
#     # Capture Screen
#     # SeleniumLibrary.Click Element    ${campoAtivXpathInput}
#     # Sleep                            1
#     # SeleniumLibrary.Input Text       ${campoAtivXpathInput}                      ${campoAtivSMF931}
#     Capture Screen

Clicar no botão Salvar
    Sleep                                      1
    Wait Until Element Is Visible              ${btnSalvar}                                    120
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      5
    Capture Screen

# Inserir informações no campo: <Grupo> "${numGrupo}", <Proced> "${numProced}", <Qtde.> "${campoQtde}", <Setor> "${campoSetor}", <Setor E.> "${campoSetorE}", <Prest.> "${campoPrest}", <Ativ.> "${campoAtiv}" - SMF933
#     Wait Until Element Is Visible    ${campoGrupoXpath}                          120
#     SeleniumLibrary.Click Element    ${campoGrupoXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoGrupoXpath}                          ${numGrupoSMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoProcedXpath}                         120
#     SeleniumLibrary.Click Element    ${campoProcedXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoProcedXpathInput}                    ${numProcedSMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoQtdeXpath}                           120
#     SeleniumLibrary.Click Element    ${campoQtdeXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoQtdeXpathInput}                      ${campoQtdeSMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoSetorXpath}                          120
#     SeleniumLibrary.Click Element    ${campoSetorXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoSetorXpathInput}                     ${campoSetorSMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoSetorEXpath}                         120
#     SeleniumLibrary.Click Element    ${campoSetorEXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoSetorEXpathInput}                    ${campoSetorESMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoPrestXpath}                          120
#     SeleniumLibrary.Click Element    ${campoPrestXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoPrestXpathInput}                     ${campoPrestSMF933}
#     Capture Screen

#     Wait Until Element Is Visible    ${campoAtivXpath}                           120
#     SeleniumLibrary.Click Element    ${campoAtivXpath}
#     Sleep                            1
#     SeleniumLibrary.Input Text       ${campoAtivXpathInput}                      ${campoAtivSMF933}
#     Capture Screen

Clicar no botão Equipe Médica
    Wait Until Element Is Visible              ${btnEquipeMedica}                15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnEquipeMedica}
    Sleep                                      80

O usuário deverá preencher os campos Código e Médico
    Wait Until Element Is Visible    ${campoCodigo}                              120
    SeleniumLibrary.Click Element    ${campoCodigo}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoCodigoInput}                         ${numGrupoSMF931}
    Capture Screen

    Wait Until Element Is Visible    ${campoMedico}                              120
    SeleniumLibrary.Click Element    ${campoMedico}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoMedicoInput}                          ${numProcedSMF931}
    Capture Screen

Clicar no botão Voltar
    Wait Until Element Is Visible              ${btnVoltar}                      15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnVoltar}
    Sleep                                      80

# Selecionar o procedimento desejado

# Clicar no botão visualizar
#     Wait Until Element Is Visible              ${btnVisualizar}                      15
#     Sleep                                      1
#     SeleniumLibrary.Click Button               ${btnVisualizar}
#     Sleep                                      80

Informar o período final da conta
    Wait Until Element Is Visible              ${dataFinal}                            120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${dataFinal}                            ${valorDataFinal}
    Sleep                                      1

Clicar no botão OK
    Wait Until Element Is Visible              ${btnOK}                                15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnOK}
    Sleep                                      80

Selecionar Saída do Relatório

Clicar no botão Imprimir 
    Wait Until Element Is Visible              ${btnImprimir}                          15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnImprimir}
    Sleep                                      80

O usuário deverá fechar o relatório

Informar o período final da conta
    Wait Until Element Is Visible              ${dataFinal}                            120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${dataFinal}                            ${valorDataFinalSMF944}
    Sleep                                      1

Selecionar Saída do Relatório

O usuário deve marcar o campo Fec?

Clicar no botão Kit
    Wait Until Element Is Visible              ${btnKIT}                                15
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnKIT}
    Sleep                                      80

Inserir informações no campo: <Cód.> "${numCodPrestador}", <Kit> "${numKit}", <Qtde.> "${campoQtde}", <Setor> "${campoSetor}"
    Wait Until Element Is Visible    ${campoCodPrest}                          120
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoCodPrest}                          ${numCodPrestador}
    Sleep                            3

    Wait Until Element Is Visible    ${campoKit}                               40
    SeleniumLibrary.Click Element    ${campoKit}
    Sleep                            1
    Wait Until Element Is Visible    ${campoKitInput}                          5
    SeleniumLibrary.Input Text       ${campoKitInput}                          ${numKit}

    Wait Until Element Is Visible    ${campoQtde}                              40
    SeleniumLibrary.Click Element    ${campoQtde}
    Sleep                            1
    Wait Until Element Is Visible    ${campoQtdeInput}                         5
    SeleniumLibrary.Input Text       ${campoQtdeInput}                         ${campoQtde}

    Wait Until Element Is Visible    ${campoSetor}                             40
    SeleniumLibrary.Click Element    ${campoSetor}
    Sleep                            1
    Wait Until Element Is Visible    ${campoSetorInput}                        5
    SeleniumLibrary.Input Text       ${campoSetorInput}                        ${campoSetor}
    Capture Screen

Clicar no botão na lateral da tabela
    Wait Until Element Is Visible              ${btnOKContaKit}                                25
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnOKContaKit}
    Sleep                                      30

Clicar no botão Opção Lançamento
    Wait Until Element Is Visible              ${btnOKContaKit}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnOKContaKit}
    Sleep                                      30

Clicar em Retornar
    Wait Until Element Is Visible              ${btnRetornar}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnRetornar}
    Sleep                                      30

Sair da tela de Serviços
    Wait Until Element Is Visible              ${btnRetornarServicos}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnRetornarServicos}
    Sleep                                      30

Excluir Kit 
    Wait Until Element Is Visible              ${btnExluirKit}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnExluirKit}
    Sleep                                      30

Confirmar exclusão do Kit
    Wait Until Element Is Visible              ${btnConfirmaExclusao}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnConfirmaExclusao}
    Sleep                                      30

Clicar no botão Guias
    Wait Until Element Is Visible              ${btnGuias}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnGuias}
    Sleep                                      50
    Capture Screen

Clicar no botão Recalcular Conta
    Wait Until Element Is Visible              ${btnRecalcularConta}                                30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnRecalcularConta}
    Sleep                                      50
    Capture Screen

Clicar no botão Sim e confirmar

Clicar no botão Recebe Conta
    Wait Until Element Is Visible              ${btnRecebeConta}                        30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnRecebeConta}
    Sleep                                      50
    Capture Screen

Imprime Nota Fiscal
    Wait Until Element Is Visible              ${btnImprimeNF}                          30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnImprimeNF}
    Sleep                                      50
    Capture Screen

Cancelar Nota Fiscal    
    Wait Until Element Is Visible              ${btnCancelarNF}                          30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnCancelarNF}
    Sleep                                      50
    Capture Screen

Informar motivo do Cancelamento

Clicar no botão Recebe Conta novamente
    Wait Until Element Is Visible              ${btnCancelarNF}                          30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnCancelarNF}
    Sleep                                      50
    Capture Screen
    
Imprime Nota Fiscal novamente
    Wait Until Element Is Visible              ${btnImprimeNF}                          30
    Sleep                                      1
    SeleniumLibrary.Click Button               ${btnImprimeNF}
    Sleep                                      50
    Capture Screen

