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

${AuditoriaContaHospitalarPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${AuditoriaContaHospitalarExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${AuditoriaContaHospitalarSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${AuditoriaContaHospitalarAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${AuditoriaContaHospitalarApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a




${AuditoriaContaHospitalarAvisoOkBtn}                                 xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary']
${AuditoriaContaHospitalarImprimirBtn}                                xpath=//div[@id='CV_PADRAO_PARAMETER']//button[@data-member='BTN_IMPRIMIR']
${AuditoriaContaHospitalarSairBtn}                                    xpath=//button[@data-member='BTN_SAIR']
${AuditoriaContaHospitalarContaBtn}                                   xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][2]
${AuditoriaContaHospitalarItemBtn}                                    xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][3]
${AuditoriaContaHospitalarCancelarAuditoriaBtn}                       xpath=//button[@data-member='BTN_CANCELA_AUDITORIA']
${AuditoriaContaHospitalarRelatorioAuditoriaBtn}                      xpath=//button[@data-member='BTN_REL']
${AuditoriaContaHospitalarIncluirItemBtn}                             xpath=//button[@data-member='BTN_INCLUI_ITEM']

${AuditoriaContaHospitalarPacientePagaCheck}                          xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width']//div[@data-member='SN_PACIENTE_PAGA']//button[@data-member='SN_PACIENTE_PAGA']


${AuditoriaContaHospitalarCodConta}                                   xpath=//div[@data-member='CD_REG_FAT']//input[@name='cdRegFat']

${AuditoriaContaHospitalarQtdeLiberadaClick}                          xpath=//div[@class='slick-cell b11 f11 selected VaItemNormal']//div[@data-member='QT_LANCAMENTO']
${AuditoriaContaHospitalarQtdeLiberadaInput}                          xpath=//div[@class='slick-cell b11 f11 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaHospitalarMotivoClick}                                xpath=//div[@class='slick-cell b14 f14 selected VaItemNormal']
${AuditoriaContaHospitalarMotivoInput}                                xpath=//div[@class='slick-cell b14 f14 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaHospitalarValorLiberadoClick}                         xpath=//div[@class='slick-cell b13 f13 selected VaItemNormal']//div[@data-member='DSP_VL_TOTAL_CONTA']      
${AuditoriaContaHospitalarValorLiberadoInput}                         xpath=//div[@class='slick-cell b13 f13 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaHospitalarPorcentagemLiberadaClick}                   xpath=//div[@class='slick-cell b6 f6 selected VaItemNormal']//div[@data-member='DSP_VL_PERCENTUAL_MULTIPLA']
${AuditoriaContaHospitalarPorcentagemLiberadaInput}                   xpath=//div[@class='slick-cell b6 f6 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaHospitalarSaidaRelatorioClick}                        xpath=//div[@data-member='TP_SAIDA']
${AuditoriaContaHospitalarSaidaRelatorioInput}                        xpath=//div[@data-member='TP_SAIDA']//input[@type='text']

#######################################

${AuditoriaContaHospitalarGrupo}                                      xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarProcedimentoClick}                          xpath=//div[@class='slick-cell b1 f1 selected']
${AuditoriaContaHospitalarProcedimentoInput}                          xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarQtdLancamentoClick}                         xpath=//div[@class='slick-cell b6 f6 selected']
${AuditoriaContaHospitalarQtdLancamentoInput}                         xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarMotivoAuditoriaClick}                       xpath=//div[@class='slick-cell b7 f7 selected']
${AuditoriaContaHospitalarMotivoAuditoriaInput}                       xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarSetorClick}                                 xpath=//div[@class='slick-cell b10 f10 selected']
${AuditoriaContaHospitalarSetorInput}                                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarSetorExecClick}                             xpath=//div[@class='slick-cell b11 f11 selected']
${AuditoriaContaHospitalarSetorExecInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarPrestadorClick}                             xpath=//div[@class='slick-cell b12 f12 selected']
${AuditoriaContaHospitalarPrestadorInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaHospitalarProntaClick}                                xpath=//div[@data-member='SN_PRONTA']






*** Keywords ***
