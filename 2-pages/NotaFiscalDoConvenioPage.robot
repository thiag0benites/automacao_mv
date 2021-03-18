##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource       ../Config.robot
Resource       ../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos da Pagina de Impressão de Fatura

${NotaFiscalDoConvenioPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${NotaFiscalDoConvenioExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${NotaFiscalDoConvenioSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${NotaFiscalDoConvenioAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${NotaFiscalDoConvenioApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a




${NotaFiscalDoConvenioImprimirBtn}                                xpath=//div[@id='CV_PADRAO_PARAMETER']//button[@data-member='BTN_IMPRIMIR']
${NotaFiscalDoConvenioSairBtn}                                    xpath=//button[@data-member='BTN_SAIR']
${NotaFiscalDoConvenioContaBtn}                                   xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][2]
${NotaFiscalDoConvenioItemBtn}                                    xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][3]
${NotaFiscalDoConvenioCancelarAuditoriaBtn}                       xpath=//button[@data-member='BTN_CANCELA_AUDITORIA']
${NotaFiscalDoConvenioRelatorioAuditoriaBtn}                      xpath=//button[@data-member='BTN_REL']

${NotaFiscalDoConvenioCodConvenio}                                xpath=//div[@data-member='CD_CONVENIO']//input[@type='text']

${NotaFiscalDoConvenioValorRemessaClick}                          xpath=//*[@id="PAGE_REMESSA_grdRemessa"]/div[4]/div[3]/div/div/div[1]
${NotaFiscalDoConvenioValorRemessaInput}                          xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='0']

${NotaFiscalDoConvenioDescontoClick}                              xpath=//*[@id="PAGE_REMESSA_cdDesconto2"]/button
${NotaFiscalDoConvenioSelecionaDesconto}                          xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[5]/div/div
${NotaFiscalDoConvenioDescontoClickOK}                            xpath=//*[@id="btok"]
${NotaFiscalDoConvenioValorDescontoClick}                         xpath=//*[@id="PAGE_REMESSA_vlDesconto2"]    
${NotaFiscalDoConvenioValorDescontoInput}                         xpath=//*[@id="inp:vlDesconto2"]

${NotaFiscalDoConvenioAcrescimoClick}                             xpath=//*[@id="PAGE_REMESSA_cdAcrescimo2"]/button
${NotaFiscalDoConvenioSelecionaAcrescimo}                         xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[1]/div/div
${NotaFiscalDoConvenioAcrescimoClickOK}                           xpath=//*[@id="btok"]
${NotaFiscalDoConvenioValorAcrescimoClick}                        xpath=//*[@id="PAGE_REMESSA_vlAcrescimo2"]    
${NotaFiscalDoConvenioValorAcrescimoInput}                        xpath=//*[@id="inp:vlAcrescimo2"]

${NotaFiscalDoConvenioConcluirBtn}                                xpath=//button[@data-member='BTN_CONCLUIR3']
${NotaFiscalDoConvenioAvisoOkBtn}                                 xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary']


${NotaFiscalDoConvenioResumoAba}                                   xpath=///*[@id="CV_PAGE_CV_PAGE_tab4"]





#######################################



${NotaFiscalDoConvenioProcedimentoClick}                          xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width']//div[@data-row='0']
${NotaFiscalDoConvenioProcedimentoInput}                          xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='0']

${NotaFiscalDoConvenioQtdLancamentoClick}                         xpath=//div[@class='slick-cell b6 f6 selected']
${NotaFiscalDoConvenioQtdLancamentoInput}                         xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${NotaFiscalDoConvenioMotivoAuditoriaClick}                       xpath=//div[@class='slick-cell b7 f7 selected']
${NotaFiscalDoConvenioMotivoAuditoriaInput}                       xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${NotaFiscalDoConvenioSetorClick}                                 xpath=//div[@class='slick-cell b10 f10 selected']
${NotaFiscalDoConvenioSetorInput}                                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${NotaFiscalDoConvenioSetorExecClick}                             xpath=//div[@class='slick-cell b11 f11 selected']
${NotaFiscalDoConvenioSetorExecInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${NotaFiscalDoConvenioPrestadorClick}                             xpath=//div[@class='slick-cell b12 f12 selected']
${NotaFiscalDoConvenioPrestadorInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${NotaFiscalDoConvenioProntaClick}                                xpath=//div[@data-member='SN_PRONTA']






*** Keywords ***
