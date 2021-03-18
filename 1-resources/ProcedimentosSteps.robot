##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Definição das keywords personalizadas na suite de teste
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource      ../2-pages/LoginPage.robot
Resource      ../2-pages/HomePage.robot
Resource      ../2-pages/ProcedimentosPage.robot
# ### Metodos Genericos
# Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource      dados/DadosTeste.robot
Resource      ContextoSteps.robot

*** Variable ***

*** Keywords ***

Inserir informações nos seguintes campos: <Cód.Proced> "${codProcedimento}", <Procedimento> "${procedimento}", <Tabelas> "${codTabela}", <Vigencia> "${vigencia}", <Vl Honorário> "${vlHonorario}", <Vl Operacional> "${vlOperacional}"${printscreen}
    
    Wait Until Element Is Visible        ${ProcedimentosXpathCellCodProcedInput}        180
    Sleep                                1
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellCodProcedInput}        ${codProcedimento}
    Sleep                                1

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellTable}
    Sleep                                1

    ${strProcedimentoAtual}              SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellProcedimento}
    Wait Until Element Is Visible        ${ProcedimentosXpathCellProcedimento}          5
    Sleep                                1
    Should Be Equal As Strings           ${procedimento}                                ${strProcedimentoAtual}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellTableInput}            5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellTableInput}            ${codTabela}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVigencia}
    Sleep                                1

    Wait Until Element Is Visible        ${ProcedimentosXpathCellVigenciaInput}         5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVigenciaInput}         ${vigencia}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlHonorario}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlHonorarioInput}      5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlHonorarioInput}      ${vlHonorario}

    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlOperacional}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlOperacionalInput}    5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlOperacionalInput}    ${vlOperacional}

    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellCodProced}
    Sleep                                3

    ${strVlHonorario}                    SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlHonorario}
    ${strVlOperacional}                  SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlOperacional}
    ${strVlTotal}                        SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlTotal}

    ${strVlHonorario}                    Replace String                                 ${strVlHonorario}                             ,                           .
    ${strVlOperacional}                  Replace String                                 ${strVlOperacional}                           ,                           .
    ${strVlTotal}                        Replace String                                 ${strVlTotal}                                 ,                           .

    ${intVlHonorario}                    Convert To Number                              ${strVlHonorario}
    ${intVlOperacional}                  Convert To Number                              ${strVlOperacional}
    ${intVlTotal}                        Convert To Number                              ${strVlTotal}

    ${intSomaVlTotal}                    Evaluate                                       ${intVlHonorario} + ${intVlOperacional}

    Log To Console                       *** VlHonorario = ${intVlHonorario}
    Log To Console                       *** VlOperacional = ${intVlOperacional}
    Log To Console                       *** VlTotal Esperado = ${intVlTotal}
    Log                                  *** VlTotal Esperado = ${intVlTotal}
    Log To Console                       *** VlTotal Obtido = ${intSomaVlTotal}
    Log                                  *** VlTotal Obtido = ${intSomaVlTotal}

    ${Ativo}                             SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellAtivo}

    Should Be Equal As Numbers           ${intVlTotal}                                  ${intSomaVlTotal}
    Should Be Equal As Strings           ${Ativo}                                       Não

    Set Global Variable                  ${intVlHonorario}                              ${intVlHonorario}
    Set Global Variable                  ${intVlTotal}                                  ${intVlTotal}
    Set Global Variable                  ${intSomaVlTotal}                              ${intSomaVlTotal}
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Valida mensagem "${mensagem}"${printscreen}

    Wait Until Element Is Visible        ${ProcedimetosXpathPMsgTextAlert}              5

    ${msgAlerta}                         SeleniumLibrary.Get Text                       ${ProcedimetosXpathPMsgTextAlert}
    Sleep                                3
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

    ${data}                              Run Keyword Unless                             '${msgAlerta}'=='${mensagem}'                 Cria data vigente valida    ${msgAlerta}
    Run Keyword If                       '${msgAlerta}'=='${mensagem}'                  Set Variable                                  ${data}                     ${dadosProcedimentosVigencia}
    Set Global Variable                  ${dataVigencia}                                ${data}

    Log To Console                       *** Nova data de vigencia: ${dataVigencia}
    Log                                  *** Nova data de vigencia: ${dataVigencia}

    Wait Until Element Is Visible        ${ProcedimetosXpathPMsgTextAlert}              5
    ${msgAlerta}                         SeleniumLibrary.Get Text                       ${ProcedimetosXpathPMsgTextAlert}
    Should Be Equal As Strings           ${msgAlerta}                                   ${mensagem}
    Sleep                                3
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen
    Click Button                         ${ProcedimentosXpathDivMsgBtnOk}

    ${Ativo}                             SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellAtivo}
    Should Be Equal As Strings           ${Ativo}                                       Sim
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Clicar no botão Apagar${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosIdBtnApagar}                    5
    Sleep                                1
    Click Elemento por titulo            Apagar
    Sleep                                1
    Wait Until Element Is Not Visible    ${ProcedimentosXpathCellCodProced}             5
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Inserir o código do procedimento utilizado no campo "${codProcedimento}"${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellCodProcedInput}        30
    Sleep                                1
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellCodProcedInput}        ${codProcedimento}
    Sleep                                1
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Verificar se o cadastro realizado foi salvo com sucesso${printscreen}

    Log To Console                       *** Data Final Vigencia: ${dataVigencia}
    Wait Until Element Is Visible        ${ProcedimentosCssDivLinhasResultadoBusca}     60
    Sleep                                5

    ${elementoLinha}                     Pega elemento filho por texto                  ${ProcedimentosCssDivLinhasResultadoBusca}    ${dataVigencia}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${dataVigencia}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Usuario deverá preencher o campo <Cód.Proced> "${codProcedimento}"${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellCodProcedInput}        180
    Sleep                                1
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellCodProcedInput}        ${codProcedimento}
    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellTable}
    Sleep                                1

    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Usuário deverá informar no campo <Vl Honorário> "${vlHonorario}" o valor a ser pago para o prestador${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlHonorario}           5
    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlHonorario}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlHonorarioInput}      5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlHonorarioInput}      ${vlHonorario}
    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellCodProced}
    Sleep                                3

    ${strVlHonorario}                    SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlHonorario}
    ${strVlOperacional}                  SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlOperacional}
    ${strVlTotal}                        SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlTotal}

    ${strVlHonorario}                    Replace String                                 ${strVlHonorario}                             ,                           .
    ${strVlOperacional}                  Replace String                                 ${strVlOperacional}                           ,                           .
    ${strVlTotal}                        Replace String                                 ${strVlTotal}                                 ,                           .

    ${intVlHonorario}                    Convert To Number                              ${strVlHonorario}
    ${intVlOperacional}                  Convert To Number                              ${strVlOperacional}
    ${intVlTotal}                        Convert To Number                              ${strVlTotal}

    ${intSomaVlTotal}                    Evaluate                                       ${intVlHonorario} + ${intVlOperacional}

    Log To Console                       *** VlHonorario = ${intVlHonorario}
    Log To Console                       *** VlOperacional = ${intVlOperacional}
    Log To Console                       *** VlTotal Esperado = ${intVlTotal}
    Log                                  *** VlTotal Esperado = ${intVlTotal}
    Log To Console                       *** VlTotal Obtido = ${intSomaVlTotal}
    Log                                  *** VlTotal Obtido = ${intSomaVlTotal}

    ${Ativo}                             SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellAtivo}

    Should Be Equal As Numbers           ${intVlTotal}                                  ${intSomaVlTotal}
    Should Be Equal As Strings           ${Ativo}                                       Sim

    Set Global Variable                  ${intVlHonorario}                              ${intVlHonorario}
    Set Global Variable                  ${intVlTotal}                                  ${intVlTotal}
    Set Global Variable                  ${intSomaVlTotal}                              ${intSomaVlTotal}

    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

No campo <Vl operacional> "${vlOperacional}" informar o valor a ser pago correspondente aos materiais utilizados na execução do procedimento${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlOperacional}         5
    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellVlOperacional}
    Sleep                                1
    Wait Until Element Is Visible        ${ProcedimentosXpathCellVlOperacionalInput}    5
    SeleniumLibrary.Input Text           ${ProcedimentosXpathCellVlOperacionalInput}    ${vlOperacional}
    Sleep                                1
    SeleniumLibrary.Click Element        ${ProcedimentosXpathCellCodProced}
    Sleep                                3

    ${strVlHonorario}                    SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlHonorario}
    ${strVlOperacional}                  SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlOperacional}
    ${strVlTotal}                        SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellVlTotal}

    ${strVlHonorario}                    Replace String                                 ${strVlHonorario}                             ,                           .
    ${strVlOperacional}                  Replace String                                 ${strVlOperacional}                           ,                           .
    ${strVlTotal}                        Replace String                                 ${strVlTotal}                                 ,                           .

    ${intVlHonorario}                    Convert To Number                              ${strVlHonorario}
    ${intVlOperacional}                  Convert To Number                              ${strVlOperacional}
    ${intVlTotal}                        Convert To Number                              ${strVlTotal}

    ${intSomaVlTotal}                    Evaluate                                       ${intVlHonorario} + ${intVlOperacional}

    Log To Console                       *** VlHonorario = ${intVlHonorario}
    Log To Console                       *** VlOperacional = ${intVlOperacional}
    Log To Console                       *** VlTotal Esperado = ${intVlTotal}
    Log                                  *** VlTotal Esperado = ${intVlTotal}
    Log To Console                       *** VlTotal Obtido = ${intSomaVlTotal}
    Log                                  *** VlTotal Obtido = ${intSomaVlTotal}

    ${Ativo}                             SeleniumLibrary.Get Text                       ${ProcedimentosXpathCellAtivo}

    Should Be Equal As Numbers           ${intVlTotal}                                  ${intSomaVlTotal}
    Should Be Equal As Strings           ${Ativo}                                       Sim

    Set Global Variable                  ${intVlHonorario}                              ${intVlHonorario}
    Set Global Variable                  ${intVlTotal}                                  ${intVlTotal}
    Set Global Variable                  ${intSomaVlTotal}                              ${intSomaVlTotal}

    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen
    

Apaga e valida numero dos Valores dos Procedimentos${printscreen}

    Wait Until Element Is Visible        ${ProcedimentosxPathSpanRegistros}             180
    Sleep                                3    

    ${Registros}                          SeleniumLibrary.Get Text                      ${ProcedimentosxPathSpanRegistros} 
    ${Registros}                          Get Substring                                 ${Registros}                                   12
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

    Clicar no botão Apagar@nprint
    Sleep                                 2

    ${RegistrosAtual}                     SeleniumLibrary.Get Text                      ${ProcedimentosxPathSpanRegistros} 
    ${RegistrosAtual}                     Get Substring                                 ${RegistrosAtual}                              12

    ${intRegistros}                       Convert To Integer                            ${Registros}
    ${intRegistrosAtual}                  Convert To Integer                            ${RegistrosAtual}

    ${intRegistros}                       Evaluate                                      ${intRegistros} - 1

    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

    Should Be Equal As Integers           ${intRegistros}                               ${intRegistrosAtual}
