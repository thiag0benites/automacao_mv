##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Central de Guias

${GuiaIdIframe}                                                id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${GuiaXpathAtend}                                              xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${btnExecutar}                                                 xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnAplicarNum}                                               id=btnFaixaGuias
${btnSalvar}                                                   xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${campoNrGuia}                                                 xpath=//div[@class='slick-cell b4 f4 selected VaVermelhoRegAtual']
${campoNrGuiaInput}                                            xpath=//div[@class='slick-cell b4 f4 selected VaVermelhoRegAtual active editable']//input
${btnAdiciona}                                                 xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${tipoAtend}                                                   xpath=//div[@class='slick-cell b6 f6 selected']
${tipoAtendInput}                                              xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${btnApagar}                                                   xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a
${GuiaXpathSenha}                                              xpath=//div[@class='slick-cell b5 f5 selected VaVermelhoRegAtual']
${GuiaXpathSenhaInput}                                         xpath=//div[@class='slick-cell b5 f5 selected VaVermelhoRegAtual active editable']//input
${btnPastaArquivosAnexos}                                      xpath=      
# ${GuiaXpathTipo2}                                              xpath=//div[@id='grdAnexosGuia']//div[@class='slick-cell b1 f1 selected ui-fixed-width']
# ${GuiaXpathTipoInput2}                                         xpath=//div[@id='grdAnexosGuia']//div[@class='slick-cell b1 f1 selected ui-fixed-width']//input
# ${GuiaXpathDescricao2}                                         xpath=//div[@id='grdAnexosGuia']//div[@class='slick-cell b2 f2 selected']
# ${GuiaXpathDescricaoInput2}                                    xpath=//div[@id='grdAnexosGuia']//div[@class='slick-cell b2 f2 selected']//input
${GuiaXpathTipo2}                                              xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdAnexosGuia']
${GuiaXpathTipoInput2}                                         xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdAnexosGuia']//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${GuiaXpathDescricao2}                                         xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdAnexosGuia']//div[@class='slick-cell b2 f2 selected']
${GuiaXpathDescricaoInput2}                                    xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdAnexosGuia']//div[@class='slick-cell b2 f2 selected active editable']//input
${btnExcluir}                                                  xpath=
${btnConfirmaSim}                                              xpath=
${guiaXpathDescricao}                                          xpath=
${btnHistObservacoes}                                          xpath=
${GuiasCssDivLinhasResultadoBusca}                             css=div[id='grdGuia'] div[class^='ui-widget-content slick-row']
${checkboxFD}                                                  css=div[id='grdItGuia'] div[class^='ui-widget-content slick-row'] div[class^='slick-cell b12 f12 selected ui-fixed-width active'] button
${GuiaXpathTipo}                                               xpath=//div[@class='slick-cell b6 f6 selected VaVermelhoRegAtual active editable']//input
${btnSolicitarGuiaPendente}                                    xpath=//button[@id='btnSolicitacao']
${campoPendencia}                                              xpath=//input[@id='inp:cdMotivoPendencia']
${btnValorizar}                                                xpath=//button[@id='btnValorizacao']
${GuiasCssDivLinhasResultadoBusca}                             css=div[id='grdGuia'] div[class^='ui-widget-content slick-row']
${btnSim}                                                      xpath=//button[@class='btn btn-primary'][1]
${xpathSituacao}                                               xpath=//div[@class='slick-cell b14 f14 selected VaVermelhoRegAtual']
${xpathSituacaoInput}                                          xpath=//div[@class='slick-cell b14 f14 selected VaVermelhoRegAtual active editable']//input
${btnAnexos}                                                   xpath=//button[@id='btnAnexos']
${btnRetornar}                                                 xpath=//button[@id='btnSair']
${campoUpload}                                                 xpath=//input[@name='file[]']
