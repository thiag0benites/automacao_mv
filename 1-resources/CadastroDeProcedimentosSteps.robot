##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/CadastroDeProcedimentosPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Acessar a tela "${caminhoSelecaoMenu}"${printscreen}

    Click Element                        ${HomeXpathBtnMenu}

    @{listaItensMenu}                    Converte string em lista                       ${caminhoSelecaoMenu}                         >

    FOR                                  ${itemMenu}                                    IN                                            @{listaItensMenu}
        Seleciona item no menu               ${itemMenu}
        Log To Console                       *** Item ${itemMenu} selecionado no menu
        Log                                  *** Item ${itemMenu} selecionado no menu
    END

    Click na imagem                      ${so}_${browser}_alert.png                     60
    Seleciona frame                      ${ProcedimentosXpathFrame}                    180
    Sleep                                1
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Preencher campos Código "${codProcedimentoSMF5040}", Descrição "${descricaoProced}", Unidade "${unidadeProced}", Grupo "${grupoProced}" e Sexo"${sexoProced}"${printscreen}
    Wait Until Element Is Visible              ${codigoProced}                           120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${codigoProced}                           ${codProcedimento}
    Sleep                                      1

    Wait Until Element Is Visible              ${descricaoProced}                        15
    Sleep                                      3
    Click Element                              ${descricaoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${descricaoProced}                        ${descricaoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${unidadeProced}                          15
    Sleep                                      3
    Click Element                              ${unidadeProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${unidadeProced}                          ${unidadeProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${grupoProced}                            15
    Sleep                                      3
    Click Element                              ${grupoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${grupoProced}                            ${grupoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${sexoInputProced}                        15
    Sleep                                      3
    Click Element                              ${sexoInputProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${sexoInputProced}                        ${sexoProced}
    Sleep                                      1 
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Clicar no botão Salvar${printscreen}
    Sleep                                      10
    Wait Until Element Is Visible              ${btnSalvar}                              60
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      10
    Run Keyword If                            '${printscreen}' == '@print'                   Capture Screen

#SMF-5064 : Realizar consulta de Procedimento de Convênio
Clicar no botão Pesquisar${printscreen}
    Wait Until Element Is Visible              ${btnSearch}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSearch}
    Sleep                                      80
    Run Keyword If                            '${printscreen}' == '@print'                   Capture Screen

Preencher campos da tela para realizar a consulta "${codProced}"${printscreen}
    Wait Until Element Is Visible              ${codigoProced}                           70
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${codigoProced}                           ${codProcedimentoSMF5064}
    Sleep                                      1
    Run Keyword If                            '${printscreen}' == '@print'                   Capture Screen

Clicar no botão executar${printscreen}
    Wait Until Element Is Visible              ${btnExecutar}                            15
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExecutar}
    Sleep                                      80
    Run Keyword If                           '${printscreen}' == '@print'                   Capture Screen

Realizar o preenchimento dos campos Código "${codProced}", Descrição "${descricaoProced}", Unidade "${unidadeProced}", Grupo "${grupoProced}", Sexo "${sexoProced}", Porte "${porteProced}" e Auxiliares "${auxiliaresProced}"${printscreen}
    Wait Until Element Is Visible              ${codigoProced}                           120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${codigoProced}                           ${codProced}
    Sleep                                      1

    Wait Until Element Is Visible              ${descricaoProced}                        15
    Sleep                                      3
    Click Element                              ${descricaoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${descricaoProced}                        ${descricaoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${unidadeProced}                          15
    Sleep                                      3
    Click Element                              ${unidadeProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${unidadeProced}                          ${unidadeProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${grupoProced}                            15
    Sleep                                      3
    Click Element                              ${grupoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${grupoProced}                            ${grupoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${sexoInputProced}                        15
    Sleep                                      3
    Click Element                              ${sexoInputProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${sexoInputProced}                        ${sexoProced}
    Sleep                                      1

    Wait Until Element Is Visible              ${porteProced}                            15
    Sleep                                      3
    Click Element                              ${porteProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${porteProced}                            ${porteProced}
    Sleep                                      1

    Wait Until Element Is Visible              ${auxiliaresProced}                       15
    Sleep                                      3
    Click Element                              ${auxiliaresProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${auxiliaresProced}                       ${auxiliaresProced}
    Sleep                                      1
    Run Keyword If                           '${printscreen}' == '@print'                   Capture Screen

Realizar o preenchimento dos campos Código "${codProced}", Descrição "${descricaoProced}", Unidade "${unidadeProced}", Grupo "${grupoProced}", Sexo "${sexoProced}", checkbox MD${printscreen}
    Wait Until Element Is Visible              ${codigoProced}                           120
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${codigoProced}                           ${codProced}
    Sleep                                      1

    Wait Until Element Is Visible              ${descricaoProced}                        15
    Sleep                                      3
    Click Element                              ${descricaoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${descricaoProced}                        ${descricaoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${unidadeProced}                          15
    Sleep                                      3
    Click Element                              ${unidadeProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${unidadeProced}                          ${unidadeProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${grupoProced}                            15
    Sleep                                      3
    Click Element                              ${grupoProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${grupoProced}                            ${grupoProced}
    Sleep                                      1 

    Wait Until Element Is Visible              ${sexoInputProced}                        15
    Sleep                                      3
    Click Element                              ${sexoInputProced}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${sexoInputProced}                        ${sexoProced}
    Sleep                                      1

    Wait Until Element Is Visible              ${checkboxMD}                             15
    Sleep                                      3
    Click Element                              ${checkboxMD}
    Sleep                                      1            
    Run Keyword If                           '${printscreen}' == '@print'                   Capture Screen

#SMF-5042 : Excluir Procedimento de Convênio
Preencher campos para consulta e exclusão "${codProced}"${printscreen}
    Wait Until Element Is Visible              ${codigoProced}                           60
    Sleep                                      1
    SeleniumLibrary.Input Text                 ${codigoProced}                           ${codProced}
    Sleep                                      1
    Capture Page Screenshot
    Run Keyword If                           '${printscreen}' == '@print'                   Capture Screen


Clicar no botão excluir${printscreen}
    Wait Until Element Is Visible              ${btnExcluir}                            15
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExcluir}
    Sleep                                      2
    Capture Page Screenshot
    Run Keyword If                           '${printscreen}' == '@print'                   Capture Screen
