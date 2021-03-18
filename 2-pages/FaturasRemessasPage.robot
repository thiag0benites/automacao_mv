##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource               ../Config.robot
Resource               ../1-resources/auxiliar/Genericos.robot
*** Variable ***
### Elementos da Pagina de Criação de remessas
${GuiasCssDivLinhasResultadoBusca}           css=div[id='grdFatura'] div[class^='ui-widget-content slick-row']
${GuiasCssDivLinhasResultadoClickTable}      css=div[id='grdFatura'] div[class^='ui-widget-content slick-row']
${RemessaIdIframe}                           id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnSearch}                                 xpath=//li[@id='toolbar']//li[@id='tb-search']
${btnSalvar}                                 xpath=//li[@id='toolbar']//li[@id='tb-record-save']
${btnSearchConfirma}                         xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${campoConvenio}                             xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${btnAtendRemessa}                           xpath=//button[@id='btnLoteAtendimento']
${btnExecutar}                               xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnImprimir}                               xpath=//button[@class='ui-widget ui-button btn btn-default ui-state-default ui-box-fixed-size mode-edit'][1]
${btnSair}                                   xpath=//button[@class='ui-widget ui-button btn btn-default ui-state-default ui-box-fixed-size mode-edit'][2]
${campoDescricao}                            xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']
${campoDescricaoInput}                       xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${campoCompetencia}                          xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${campoCompetenciaInput}                     xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${btnSalvar}                                 xpath=
${dataAberturaRemessa}                       xpath=
${dataPagamentoPrevista}                     xpath=
${numAgrupamento}                            xpath=
${btnConfirmar}                              xpath=