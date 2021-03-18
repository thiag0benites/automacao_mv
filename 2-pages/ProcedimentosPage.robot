##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                          ../Config.robot
Resource                                          ../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos
${ProcedimetosDivLinha}                           xpath=//div[@class='ui-widget-content slick-row even active']
${ProcedimentosXpathIframe}                       xpath=//iframe[@class="iframe-visibility-hidden"]
${ProcedimentosXpathCellCodProced}                xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${ProcedimentosXpathCellCodProcedInput}           xpath=//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellProcedimento}             xpath=//div[@class='slick-cell b1 f1 selected']
${ProcedimentosXpathCellTable}                    xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${ProcedimentosXpathCellTableInput}               xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellVigencia}                 xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${ProcedimentosXpathCellVigenciaInput}            xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ProcedimentosXpathCellVlHonorario}              xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${ProcedimentosXpathCellAtivo}                    xpath=//div[@class='slick-cell b7 f7 slick-last-cell selected ui-fixed-width']
${ProcedimentosXpathCellVlHonorarioInput}         xpath=//input[@class='editor-text mode-edit']
${ProcedimentosXpathCellVlOperacional}            xpath=//div[@class='slick-cell b5 f5 selected ui-fixed-width']
${ProcedimentosXpathCellVlOperacionalInput}       xpath=//input[@class='editor-text mode-edit']
${ProcedimentosXpathCellVlTotal}                  xpath=//div[@class='slick-cell b6 f6 selected ui-fixed-width']
${ProcedimentosXpathBtnSalvar}                    xpath=//li[@id='tb-record-save']/a[@title='Salvar']
${ProcedimentosXpathDivMsg}                       xpath=//div[@class='notifications-item']//p
${ProcedimentosXpathDivMsgBtnOk}                  xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//button[text()='OK']
${ProcedimetosXpathIMsgAlerta}                    xpath=//i[@class='mv-basico-alerta']
${ProcedimetosXpathPMsgTextAlert}                 xpath=//p[@class='notifications-item-text']
${ProcedimentosIdBtnApagar}                       xpath=//*[@id="tb-record-remove"]/a
${ProcedimentosCssDivLinhasResultadoBusca}        css=div[class^='ui-widget-content slick-row']
${ProcedimentosxPathSpanRegistros}                xpath=//div[@class='row ui-statusbar']/span[@class='rec col-md-2']

*** Keywords ***
Cria data vigente valida
    [Arguments]                      ${msg}
    ${data}                          Get Substring                                      ${msg}                  -13
    ${data}                          Replace String                                     ${data}                 (               ${EMPTY}
    ${data}                          Replace String                                     ${data}                 ).              ${EMPTY}
    Log To Console                   *** Data atual vigencia: ${data}

    ${dia}                           Get Substring                                      ${data}                 0               2
    ${mes}                           Get Substring                                      ${data}                 3               5
    ${ano}                           Get Substring                                      ${data}                 6

    ${dia}                           Convert To Integer                                 ${dia}
    ${mes}                           Convert To Integer                                 ${mes}
    ${ano}                           Convert To Integer                                 ${ano}

    ${dia}                           Run Keyword If                                     ${dia} < 28             Evaluate        ${dia} + 1
    ...                              ELSE                                               Set Variable            1

    ${mes}                           Run Keyword If                                     ${dia} == 1             Evaluate        ${mes} + 1
    ...                              ELSE                                               Set Variable            ${mes}

    ${mes}                           Run Keyword If                                     ${mes} == 13            Set Variable    1
    ...                              ELSE                                               Set Variable            ${mes}

    ${trocaAno}                      Evaluate                                           ${mes} + ${dia}

    ${ano}                           Run Keyword If                                     ${trocaAno} == 2        Evaluate        ${ano} + 1
    ...                              ELSE                                               Set Variable            ${ano}

    ${dia}                           Convert To String                                  ${dia}
    ${mes}                           Convert To String                                  ${mes}
    ${ano}                           Convert To String                                  ${ano}

    ${diaLen}                        Get Length                                         ${dia}
    ${mesLen}                        Get Length                                         ${mes}

    ${dia}                           Run Keyword If                                     ${diaLen} == 1          Set Variable    0${dia}
    ...                              ELSE                                               Set Variable            ${dia}

    ${mes}                           Run Keyword If                                     ${mesLen} == 1          Set Variable    0${mes}
    ...                              ELSE                                               Set Variable            ${mes}

    SeleniumLibrary.Click Element    ${ProcedimentosXpathDivMsgBtnOk}
    Wait Until Element Is Visible    ${ProcedimentosXpathDivMsgBtnOk}
    Sleep                            1
    SeleniumLibrary.Click Element    ${ProcedimentosXpathDivMsgBtnOk}
    Sleep                            1
    SeleniumLibrary.Click Element    ${ProcedimentosXpathCellVigencia}
    Sleep                            1
    Wait Until Element Is Visible    ${ProcedimentosXpathCellVigenciaInput}             5
    SeleniumLibrary.Input Text       ${ProcedimentosXpathCellVigenciaInput}             ${dia}/${mes}/${ano}
    Click Elemento por titulo        Salvar                                             120
    [Return]                         ${dia}/${mes}/${ano}