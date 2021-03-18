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

${GuiasDoAtendimendoPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${GuiasDoAtendimendoExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${GuiasDoAtendimendoSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${GuiasDoAtendimendoAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${GuiasDoAtendimendoApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a


${GuiasDoAtendimendoImprimirBtn}                                xpath=//button[@data-member='BTN_IMPRIMIR']
${GuiasDoAtendimendoSairBtn}                                    xpath=//button[@data-member='BTN_SAIR']


${GuiasDoAtendimendoRelatorioOPMEBtn}                           xpath=//button[@data-member='BT_2']
${GuiasDoAtendimendoNovaGuiaBtn}                                xpath=//button[@data-member='BTN_NOVA']
${GuiasDoAtendimendoAvisoSimBtn}                                xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary'][1]
${GuiasDoAtendimendoCancelamentoSolicitacaoTissBtn}             xpath=//button[@data-member='BT_4']
${GuiasDoAtendimendoAutoriazarBtn}                              xpath=//button[@data-member='BTN_CONFIRMA']
${GuiasDoAtendimendoPreAutorizacaoBtn}                          xpath=//button[@data-member='BT_1']
${GuiasDoAtendimendoCodAtendimento}                             xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input[@row='0']
${GuiasDoAtendimendoSolicitadasClick}                           xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b0 f0 selected solcitadas']
${GuiasDoAtendimendoMotivoCancelamentoInput}                    xpath=//textarea[@name='dsMotivoCancelamento']
${GuiasDoAtendimendoConfirmaBtn}                                xpath=//button[@data-member='BTN_CONFIRMA_CACELAMENTO']
${GuiasDoAtendimendoConfirmaMntGuiasBtn}                        xpath=//button[@data-member='BTN_CONFIRMA']

${GuiasDoAtendimendoNumAtendimentoInput}                        xpath=//div[@class='slick-cell b0 f0 selected active editable']//input[@row='0']

${GuiasDoAtendimendoNumTipoClick}                               xpath=//div[@class='slick-cell b7 f7 selected']//div[@data-member='TP_GUIA']      
${GuiasDoAtendimendoNumTipoInput}                               xpath=//div[@class='slick-cell b7 f7 selected active editable']//input[@row='0']

${GuiasDoAtendimendoNumProcedimentoClick}                       xpath=//div[@class='slick-pane slick-pane-top slick-pane-left']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${GuiasDoAtendimendoNumProcedimentoInput}                       xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='0']

${GuiasDoAtendimendoSalvarNovaGuia}                             xpath=//button[@data-member='BTN_SALVAR_GUIA'] 

${GuiasDoAtendimendoSaidaRelatorioClick}                        xpath=//div[@data-member='TP_SAIDA']
${GuiasDoAtendimendoSaidaRelatorioInput}                        xpath=//div[@data-member='TP_SAIDA']//input[@type='text']

${GuiasDoAtendimendoSolicitarBtn}                               xpath=//button[@data-member='BTN_SOLICITACAO'] 
${GuiasDoAtendimendoSolicitarManutencaoGuiaBtn}                 xpath=//button[@data-member='BTN_SOLICITA'] 


#######################################





*** Keywords ***
