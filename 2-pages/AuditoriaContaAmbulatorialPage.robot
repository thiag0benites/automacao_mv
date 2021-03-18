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

${AuditoriaContaAmbulatorialPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${AuditoriaContaAmbulatorialExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${AuditoriaContaAmbulatorialSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${AuditoriaContaAmbulatorialAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${AuditoriaContaAmbulatorialApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a




${AuditoriaContaAmbulatorialAvisoOkBtn}                                 xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary']
${AuditoriaContaAmbulatorialImprimirBtn}                                xpath=//div[@id='CV_PADRAO_PARAMETER']//button[@data-member='BTN_IMPRIMIR']
${AuditoriaContaAmbulatorialSairBtn}                                    xpath=//button[@data-member='BTN_SAIR']
${AuditoriaContaAmbulatorialContaBtn}                                   xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][2]
${AuditoriaContaAmbulatorialItemBtn}                                    xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][3]
${AuditoriaContaAmbulatorialCancelarAuditoriaBtn}                       xpath=//button[@data-member='BTN_CANCELA_AUDITORIA']
${AuditoriaContaAmbulatorialRelatorioAuditoriaBtn}                      xpath=//button[@data-member='BTN_REL']
${AuditoriaContaAmbulatorialIncluirItemBtn}                             xpath=//button[@data-member='BTN_INCLUI_ITEM']

${AuditoriaContaAmbulatorialPacientePagaCheck}                          xpath=//div[@class='slick-cell b9 f9 selected ui-fixed-width']//div[@data-member='SN_PACIENTE_PAGA']//button[@data-member='SN_PACIENTE_PAGA']


${AuditoriaContaAmbulatorialCodAtendimento}                             xpath=//div[@data-member='CD_ATENDIMENTO']//input[@name='cdAtendimento']

${AuditoriaContaAmbulatorialQtdeLiberadaClick}                          xpath=//div[@class='slick-cell b11 f11 selected VaItemNormal']//div[@data-member='QT_LANCAMENTO']
${AuditoriaContaAmbulatorialQtdeLiberadaInput}                          xpath=//div[@class='slick-cell b11 f11 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaAmbulatorialMotivoClick}                                xpath=//div[@class='slick-cell b14 f14 selected VaItemNormal']
${AuditoriaContaAmbulatorialMotivoInput}                                xpath=//div[@class='slick-cell b14 f14 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaAmbulatorialValorLiberadoClick}                         xpath=//div[@class='slick-cell b13 f13 selected VaItemNormal']//div[@data-member='DSP_VL_TOTAL_CONTA']      
${AuditoriaContaAmbulatorialValorLiberadoInput}                         xpath=//div[@class='slick-cell b13 f13 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaAmbulatorialPorcentagemLiberadaClick}                   xpath=//div[@class='slick-cell b6 f6 selected VaItemNormal']//div[@data-member='DSP_VL_PERCENTUAL_MULTIPLA']
${AuditoriaContaAmbulatorialPorcentagemLiberadaInput}                   xpath=//div[@class='slick-cell b6 f6 selected VaItemNormal active editable']//input[@row='0']

${AuditoriaContaAmbulatorialSaidaRelatorioClick}                        xpath=//div[@data-member='TP_SAIDA']
${AuditoriaContaAmbulatorialSaidaRelatorioInput}                        xpath=//div[@data-member='TP_SAIDA']//input[@type='text']

#######################################

${AuditoriaContaAmbulatorialGrupo}                                      xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialProcedimentoClick}                          xpath=//div[@class='slick-cell b1 f1 selected']
${AuditoriaContaAmbulatorialProcedimentoInput}                          xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialQtdLancamentoClick}                         xpath=//div[@class='slick-cell b6 f6 selected']
${AuditoriaContaAmbulatorialQtdLancamentoInput}                         xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialMotivoAuditoriaClick}                       xpath=//div[@class='slick-cell b7 f7 selected']
${AuditoriaContaAmbulatorialMotivoAuditoriaInput}                       xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialSetorClick}                                 xpath=//div[@class='slick-cell b10 f10 selected']
${AuditoriaContaAmbulatorialSetorInput}                                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialSetorExecClick}                             xpath=//div[@class='slick-cell b11 f11 selected']
${AuditoriaContaAmbulatorialSetorExecInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialPrestadorClick}                             xpath=//div[@class='slick-cell b12 f12 selected']
${AuditoriaContaAmbulatorialPrestadorInput}                             xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='1']

${AuditoriaContaAmbulatorialProntaClick}                                xpath=//div[@data-member='SN_PRONTA']






*** Keywords ***
