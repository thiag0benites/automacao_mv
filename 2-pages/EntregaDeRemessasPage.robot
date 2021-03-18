##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource       ../Config.robot
Resource       ../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos da Pagina de Entrega de Remessa

${EntregaDeRemessaPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${EntregaDeRemessaExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${EntregaDeRemessaSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${EntregaDeRemessaAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${EntregaDeRemessaApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a


${EntregaDeRemessaFechamentoBtn}                              xpath=//button[@id='btnConfirma']
${EntregaDeRemessaCancelarRemessaBtn}                         xpath=//button[@id='btnCancela']
${EntregaDeRemessaInformarNovaRemessaBtn}                     xpath=//button[@id='btnNovaRemessa']
${EntregaDeRemessaAvisoOkBtn}                                 xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary']
${EntregaDeRemessaImprimirBtn}                                xpath=//button[@data-member='BTN_GERAR_RELATORIO']
${EntregaDeRemessaSairBtn}                                    xpath=//button[@data-member='BTN_SAIR']

${EntregaDeRemessaCodInput}                                   xpath=//div[@data-member='CD_REMESSA']//input[@name='cdRemessa1']

${EntregaDeRemessaDataEnvioClick}                             xpath=//div[@data-member='DT_ENVIO_FISICO']//input[@name='DtEnvioFisico']
${EntregaDeRemessaDataEnvioInput}                             xpath=//input[@name='DtEnvioFisico']

${EntregaDeRemessaDataPrevistaClick}                          xpath=//div[@data-member='DT_PREVISTA_PARA_PGTO']//input[@name='dtPrevistaParaPgto']
${EntregaDeRemessaDataPrevistaInput}                          xpath=//input[@name='dtPrevistaParaPgto']

${EntregaDeRemessaDataEntregaClick}                           xpath=//div[@data-member='DT_ENTREGA_DA_FATURA']//input[@name='dtEntregaDaFatura']      
${EntregaDeRemessaDataEntregaInput}                           xpath=//input[@name='dtEntregaDaFatura']

${EntregaDeRemessaCapaLoteClick}                              xpath=//div[@data-member='NR_REMESSA_CONVENIO']//input[@name='nrRemessaConvenio']
${EntregaDeRemessaCapaLoteInput}                              xpath=//input[@name='nrRemessaConvenio']

${EntregaDeRemessaDataFechamentoClick}                        xpath=//div[@data-member='DSP_DT_FECHAMENTO']//input[@name='dspDtFechamento']
${EntregaDeRemessaDataFechamentoInput}                        xpath=//input[@name='dspDtFechamento']



*** Keywords ***
