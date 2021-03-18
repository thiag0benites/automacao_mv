##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Conta do Atendimento Hospitalar
${ContaIdIframe}                                            id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${campoGrupoXpath}                                          xpath=//div[@class='slick-cell b0 f0 selected active editable']//input                                      
${campoProcedXpath}                                         xpath=//div[@class='slick-cell b1 f1 selected']
${campoProcedXpathInput}                                    xpath=//div[@class='slick-cell b1 f1 selected active editable ui-error']//input
${campoDataXpath}                                           xpath=//div[@class='slick-cell b5 f5 selected']
${campoDataXpathInput}                                      xpath=//div[@class='slick-cell b5 f5 selected active editable']//input
${campoHoraXpath}                                           xpath=//div[@class='slick-cell b6 f6 selected']
${campoHoraXpathInput}                                      xpath=//div[@class='slick-cell b6 f6 selected active editable']//input
${campoQtdeXpath}                                           xpath=//div[@class='slick-cell b8 f8 selected']
${campoQtdeXpathInput}                                      xpath=//div[@class='slick-cell b8 f8 selected active editable']//input
${campoSetorXpath}                                          xpath=//div[@class='slick-cell b11 f11 selected']
${campoSetorXpathInput}                                     xpath=//div[@class='slick-cell b11 f11 selected active editable ui-error']//input
${campoSetorEXpath}                                         xpath=//div[@class='slick-cell b12 f12 selected']
${campoSetorEXpathInput}                                    xpath=//div[@class='slick-cell b12 f12 selected active editable ui-error']//input
${campoPrestXpath}                                          xpath=//div[@class='slick-cell b13 f13 selected']
${campoPrestXpathInput}                                     xpath=//div[@class='slick-cell b13 f13 selected active editable']//input
${campoAtivXpath}                                           xpath=//div[@class='slick-cell b14 f14 selected']
${campoAtivXpathInput}                                      xpath=//div[@class='slick-cell b14 f14 selected active editable ui-error']//input
${btnExecutar}                                              xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${campoAtendimento}                                         xpath=//input[@id='inp:cdAtendimento']
${btnServicos}                                              xpath=//button[@id='btnResponsavel']
${ContasCssDivLinhasResultadoClickTable}                    css=div[id='grdRegFat'] div[class^='ui-widget-content slick-row']
${btnEquipeMedica}                                          xpath=//div[@class='slick-cell b17 f17 selected ui-label-position-default mode-edit']
${campoCodigo}                                              xpath=
${campoCodigoInput}                                         xpath=
${campoMedico}                                              xpath=
${campoMedicoInput}                                         xpath=
${dataInicial}                                              id=dspDtInicio
${dataFinal}                                                id=dspDtFinal
${btnImprimir}
${btnAdicionar}                                             xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a    
${btnOK}                                                    xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']//button
${btnSim}                                                   xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']//button[2]
${ServicosCssDivLinhasResultadoClickTable}                  css=div[id='grdItregFat'] div[class^='ui-widget-content slick-row']
${campoCodTable}                                            xpath=//div[@id='grdItlanMed2']//div[@class='grid-canvas grid-canvas-top grid-canvas-left']//div[@class='slick-cell b0 f0 ui-fixed-width selected active editable']
${numMed}                                                   xpath=//div[@id='grdItlanMed2']//div[@class='grid-canvas grid-canvas-top grid-canvas-left']//div[@class='slick-cell b2 f2 ui-fixed-width selected']
${numMedInput}                                              xpath=//div[@id='grdItlanMed2']//div[@class='grid-canvas grid-canvas-top grid-canvas-left']//div[@class='slick-cell b2 f2 ui-fixed-width selected active editable']
${btnSalvar}                                                xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${btnSimSalvar}                                             xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']//button[2]
${clicarNotificacao}                                        xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li//div[@class='notifications-item']
${btnLancamentos}                                           xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li[@class='notification-buttons']//button[3]
${btnKIT}                                                   id=btnKitPrestador
${campoCodPrest}                                            xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b0 f0 selected active editable']//input
${campoKit}                                                 xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b2 f2 selected']
${campoKitInput}                                            xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b2 f2 selected']//input
${campoQtde}                                                xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b6 f6 selected']
${campoQtdeInput}                                           xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b6 f6 selected']//input
${campoSetor}                                               xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b7 f7 selected']
${campoSetorInput}                                          xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//div[@id='grdContaKit']//div[@class='slick-cell b7 f7 selected']//input
${btnOKContaKit}                                            id=contaKit_btnOk
${btnRetornar}                                              id=contaKit_btnCancelar
${btnRetornarServicos}                                      id=itregFat_btnRetornar
${btnExcluirKit}                                            id=btnApagar
${btnConfirmaExclusao}                                      xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//button[1]
${btnGuias}                                                 id=btnCarteira
${btnRecalcularConta}                                       id=btnImprCtaFaturada
${btnRecebeConta}                                           id=btnFechaConta
${btnImprimeNF}                                             id=btImprimeNf
${btnCancelarNF}                                            id=btnCancelar
    