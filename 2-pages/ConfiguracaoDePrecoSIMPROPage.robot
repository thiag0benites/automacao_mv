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

${ConfiguracaoDePrecoSIMPROPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${ConfiguracaoDePrecoSIMPROExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${ConfiguracaoDePrecoSIMPROSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ConfiguracaoDePrecoSIMPROAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${ConfiguracaoDePrecoSIMPROApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a

${ConfiguracaoDePrecoSIMPROCodTabela}                                  xpath=//div[@data-member='CD_CONVENIO']//input[@type='text']

${ConfiguracaoDePrecoSIMPROValorClick}                                 xpath=//*[@id="PAGE_REMESSA_grdRemessa"]/div[4]/div[3]/div/div/div[1]
${ConfiguracaoDePrecoSIMPROValorInput}                                 xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@row='0']

${ConfiguracaoDePrecoSIMPROProcedimentosClick}                         xpath=//*[@id="PAGE_REMESSA_cdDesconto2"]/button
${ConfiguracaoDePrecoSIMPROValorProcedimentosInput}                    xpath=//*[@id="grdLov"]/div[4]/div[3]/div/div[5]/div/div

${ConfiguracaoDePrecoSIMPROMedicamentosClick}                          xpath=//*[@id="btok"]
${ConfiguracaoDePrecoSIMPROMedicamentosInput}                          xpath=//*[@id="PAGE_REMESSA_vlDesconto2"]    

${ConfiguracaoDePrecoSIMPROAvisoOkBtn}                                 xpath=//li[@class='notification-buttons']//button[@class='btn btn-primary']







*** Keywords ***


















































