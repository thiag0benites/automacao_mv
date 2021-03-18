##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/FaturasRemessasPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${numConvenioSMF59}", <Competência> "${numCompetênciaSMF59}"  
    Wait Until Element Is Visible        ${campoConvenio}                               180
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConvenio}                               ${numConvenioSMF59}
    Sleep                                60
    Capture Page Screenshot

    SeleniumLibrary.Click Element        ${campoCompetencia}
    Sleep                                5
    Wait Until Element Is Visible        ${campoCompetenciaInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoCompetenciaInput}                        ${numCompetenciaSMF59}
    Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${numConvenioSMF4022}", <Competência> "${numCompetênciaSMF4022}" - SMF4022
    Wait Until Element Is Visible        ${campoConvenio}                               180
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConvenio}                               ${numConvenioSMF4022}
    Sleep                                30
    Capture Page Screenshot

    SeleniumLibrary.Click Element        ${campoCompetencia}
    Sleep                                5
    Wait Until Element Is Visible        ${campoCompetenciaInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoCompetenciaInput}                        ${numCompetênciaSMF4022}
    Capture Page Screenshot


Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${numConvenioSMF279}"
    Wait Until Element Is Visible        ${campoConvenio}                               180
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConvenio}                               ${numConvenioSMF279}
    Sleep                                1
    Capture Page Screenshot

Clicar no botão atend. da remessa
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAtendRemessa}
    Sleep                                      5

Selecionar elemento da tabela - SMF4024
    Log To Console                       *** Elemento da Tabela: ${descricaoSMF4024}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${descricaoSMF4024}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${descricaoSMF4024}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${descricaoSMF4024}"- SMF4024
    SeleniumLibrary.Click Element        ${campoDescricao}
    Sleep                                5
    Wait Until Element Is Visible        ${campoDescricaoInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoDescricaoInput}                        ${descricaoSMF4024}
    Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${descricaoSMF968}"
    SeleniumLibrary.Click Element        ${campoDescricao}
    Sleep                                5
    Wait Until Element Is Visible        ${campoDescricaoInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoDescricaoInput}                        ${descricaoSMF968}
    Capture Page Screenshot

Selecionar elemento da tabela "${descricao}"
    Log To Console                       *** Elemento da Tabela: ${descricao}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${descricao}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${descricao}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Page Screenshot

# Selecionar elemento da tabela - SMF970
#     Log To Console                       *** Elemento da Tabela: ${descricaoSMF970}
#     Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
#     Sleep                                10

#     ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${descricaoSMF970}
#     ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

#     Log To Console                       *** Texto da linha: ${textoLinha}
#     Should Contain                       ${textoLinha}                                  ${descricaoSMF970}
#     SeleniumLibrary.Click Element        ${elementoLinha}
#     Sleep                                3
#     Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${descricaoSMF970}"- SMF970
    SeleniumLibrary.Click Element        ${campoDescricao}
    Sleep                                5
    Wait Until Element Is Visible        ${campoDescricaoInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoDescricaoInput}                        ${descricaoSMF970}
    Capture Page Screenshot

# Selecionar elemento da tabela - SMF973
#     Log To Console                       *** Elemento da Tabela: ${descricaoSMF973}
#     Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
#     Sleep                                10

#     ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${descricaoSMF973}
#     ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

#     Log To Console                       *** Texto da linha: ${textoLinha}
#     Should Contain                       ${textoLinha}                                  ${descricaoSMF973}
#     SeleniumLibrary.Click Element        ${elementoLinha}
#     Sleep                                3
#     Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${descricaoSMF973}"- SMF973
    SeleniumLibrary.Click Element        ${campoDescricao}
    Sleep                                5
    Wait Until Element Is Visible        ${campoDescricaoInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoDescricaoInput}                        ${descricaoSMF973}
    Capture Page Screenshot

# Selecionar elemento da tabela - SMF975
#     Log To Console                       *** Elemento da Tabela: ${descricaoSMF975}
#     Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
#     Sleep                                10

#     ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${descricaoSMF975}
#     ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

#     Log To Console                       *** Texto da linha: ${textoLinha}
#     Should Contain                       ${textoLinha}                                  ${descricaoSMF975}
#     SeleniumLibrary.Click Element        ${elementoLinha}
#     Sleep                                3
#     Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${descricaoSMF975}"- SMF975
    SeleniumLibrary.Click Element        ${campoDescricao}
    Sleep                                5
    Wait Until Element Is Visible        ${campoDescricaoInput}                         6
    Sleep                                5
    SeleniumLibrary.Input Text           ${campoDescricaoInput}                        ${descricaoSMF975}
    Capture Page Screenshot

Clicar no botão atend. da remessa - SMF4023
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAtendRemessa}
    Sleep                                      5

Clicar no botão Imprimir
    Wait Until Element Is Visible              ${btnImprimir}                                 60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnImprimir}
    Sleep                                      5
    Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${numConvenioSMF4023}" - SMF4023 
    Wait Until Element Is Visible        ${campoConvenio}                               180
    Sleep                                1
    SeleniumLibrary.Input Text           ${campoConvenio}                               ${numConvenioSMF4023}
    Sleep                                1
    Capture Page Screenshot

Clicar no botão Sair
    Wait Until Element Is Visible              ${btnSair}                                     60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSair}
    Sleep                                      5
    Capture Page Screenshot
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar no Botão Executar${printscreen}
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExecutar}
    Sleep                                      5
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar no Botão Pesquisa${printscreen}
    Wait Until Element Is Visible              ${btnSearchConfirma}                           30
    Sleep                                      3
    SeleniumLibrary.Click Element              ${btnSearchConfirma}
    Sleep                                      30
    Capture Page Screenshot
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar no botão Salvar
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      5
    Capture Page Screenshot

Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${numConvenioSMF968}" - SMF968 
    Wait Until Element Is Visible              ${campoConvenio}                             120
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenio}                             ${numConvenioSMF968}
    Sleep                                      1

Selecionar o convênio desejado - SMF 4024 
    Wait Until Element Is Visible              ${campoConvenio}                             120
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenio}                             ${numConvenioSMF4024}
    Sleep                                      1
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen


Clicar no botão Confirmar 
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnConfirmar}
    Sleep                                      5
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Realizar a pesquisa${printscreen}
    Wait Until Element Is Visible              ${btnSearch}                                   80
    SeleniumLibrary.Click Element              ${btnSearch}
    Sleep                                      60
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen
    Sleep                                      5



