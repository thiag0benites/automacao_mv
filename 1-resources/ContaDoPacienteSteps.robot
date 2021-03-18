##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Definição das keywords personalizadas na suite de teste
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource      ../2-pages/LoginPage.robot
Resource      ../2-pages/HomePage.robot
Resource      ../2-pages/ContaDoPacientePage.robot
# ### Metodos Genericos
# Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource      dados/DadosTeste.robot
Resource      ContextoSteps.robot

*** Variable ***

*** Keywords ***

Usuario deverá preencher o campo <${NomeCampo}> "${ValorCampo}"${printscreen}

    Wait Until Element Is Visible        ${ContaPacienteTxtAtendemento}        180
    
    ### Dt. Alta
    Run Keyword If                       '${NomeCampo}' == 'Dt. Alta'                         SeleniumLibrary.Click Element        ${ContaPacienteTxtDataAlta}
    Run Keyword If                       '${NomeCampo}' == 'Dt. Alta'                         Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Dt. Alta'                         SeleniumLibrary.Input Text           ${ContaPacienteTxtDataAlta}                ${ValorCampo}

    ### Tipo do Atendimento
    Run Keyword If                       '${NomeCampo}' == 'Tipo do Atendimento'              SeleniumLibrary.Click Element        ${ContaPacienteTxtTipoAtendimento}
    Run Keyword If                       '${NomeCampo}' == 'Tipo do Atendimento'              Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Tipo do Atendimento'              SeleniumLibrary.Input Text           ${ContaPacienteTxtTipoAtendimento}         ${ValorCampo}
   
    ### Convenio do Atendimento
    Run Keyword If                       '${NomeCampo}' == 'Convenio do Atendimento'          SeleniumLibrary.Click Element        ${ContaPacienteTxtNomeConvenio}
    Run Keyword If                       '${NomeCampo}' == 'Convenio do Atendimento'          Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Convenio do Atendimento'          SeleniumLibrary.Input Text           ${ContaPacienteTxtNomeConvenio}            ${ValorCampo}

    ### Dt do Atendimento
    Run Keyword If                       '${NomeCampo}' == 'Dt do Atendimento'                SeleniumLibrary.Click Element        ${ContaPacienteTxtDataAtendimento}
    Run Keyword If                       '${NomeCampo}' == 'Dt do Atendimento'                Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Dt do Atendimento'                SeleniumLibrary.Input Text           ${ContaPacienteTxtDataAtendimento}         ${ValorCampo}

    ### Prestador
    Run Keyword If                       '${NomeCampo}' == 'Prestador'                        SeleniumLibrary.Click Element        ${ContaPacienteTxtCodPrestador}
    Run Keyword If                       '${NomeCampo}' == 'Prestador'                        Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Prestador'                        SeleniumLibrary.Input Text           ${ContaPacienteTxtCodPrestador}            ${ValorCampo}

    ### Atendimento
    Run Keyword If                       '${NomeCampo}' == 'Atendimento'                      SeleniumLibrary.Click Element        ${ContaPacienteTxtAtendemento}
    Run Keyword If                       '${NomeCampo}' == 'Atendimento'                      Sleep                                1
    Run Keyword If                       '${NomeCampo}' == 'Atendimento'                      SeleniumLibrary.Input Text           ${ContaPacienteTxtAtendemento}             ${ValorCampo}

    Run Keyword If                       '${printscreen}' == '@print'                         Capture Screen

Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados${printscreen}
    
    ### Tabela Contas
    ${elementoLinha}                         Set Variable                                         ${ContaPacienteDivTabelaContas} [role='row'] 
    Wait Until Element Is Visible            ${elementoLinha}                                     30
    ${linhas}                                Get Element Count                                    ${elementoLinha}
    Run Keyword If                           ${linhas} > 0                                        Log                                  *** Tabela de Contas carregada

    ### Tabela Valores
    ${elementoLinha}                         Set Variable                                         ${ContaPacienteDivTabelaValores} [role='row'] 
    Wait Until Element Is Visible            ${elementoLinha}                                     30
    ${linhas}                                Get Element Count                                    ${elementoLinha}
    Run Keyword If                           ${linhas} > 0                                        Log                                  *** Tabela de Valores carregada
    Sleep                                    2
    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen

Valida texto da mensagem "${MsgEsperada}"${printscreen}

    Wait Until Element Is Visible            ${ContaPacientePMensagem}                            10

    ${Msg}                                   SeleniumLibrary.Get Text                             ${ContaPacientePMensagem}
    Should Be Equal As Strings               ${Msg}                                               ${MsgEsperada}

    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen

Clicar no botão Conta${printscreen}
    
    Click Button                             ${ContaPacienteBtnImprimirConta}
    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen

Usuário deverá selecionar a <Saída do Relatório> "${SaidaRelatorio}" e o <Tipo de Impressão> "${TipoImpressao}"${printscreen}
    
    Wait Until Element Is Visible            ${ContaPacienteTxtSaidaRelatorio}                    30
    Sleep                                    3
    SeleniumLibrary.Input Text               ${ContaPacienteTxtSaidaRelatorio}                    ${SaidaRelatorio}
    Sleep                                    0.5
    Press Keys                               ${ContaPacienteTxtSaidaRelatorio}                    RETURN

    SeleniumLibrary.Input Text               ${ContaPacienteTxtTipoImpressao}                     ${TipoImpressao}
    Sleep                                    3
    # Press Keys                               ${ContaPacienteTxtTipoImpressao}                     RETURN
    # Sleep                                    3
    # SeleniumLibrary.Click Element            ${ContaPacienteTxtTipoImpressao}

    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen

Clicar no botão Imprimir${printscreen}

    Click Button                             ${ContaPacienteBtnImprimirRelatorio}
    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen

Valida impressão do relatório${printscreen}
    
    # Select From List By Label                ${ContaPacienteCboTipoImpressao}                     ${TipoImpressao}
    # Wait Until Element Is Not Visible        ${ContaPacienteTxtSaidaRelatorio}                    30
    # Sleep                                    1
    
    # Log To Console                           *** Tipo de Impressão: ${TipoImpressao}
    # Log                                      *** Tipo de Impressão: ${TipoImpressao}

    # SeleniumLibrary.Input Text               ${ContaPacienteTxtTipoImpressao}                     ${TipoImpressao}
    # Sleep                                    1
    # SeleniumLibrary.Click Element            ${ContaPacienteTxtTipoImpressao}
    Sleep                                    5
    # Pega id ultima aba aberta
    ${handle}                                Switch Window                                        NEW
    Switch Window                            ${handle}
    
    Wait Until Element Is Visible            ${ContaPacienteContainerRelatorio}                   5
    Should Not Be Empty                      ${ContaPacienteContainerRelatorio}
    
    Run Keyword If                           '${printscreen}' == '@print'                         Capture Screen