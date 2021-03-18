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

${TabelasFaturamentoPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${TabelasFaturamentoExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${TabelasFaturamentoSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${TabelasFaturamentoAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${TabelasFaturamentoApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a


${TabelasFaturamentoProcedimentosBtn}                           xpath=//button[@data-member='BUT_PROCEDIMENTOS']
${TabelasFaturamentoGrupoProcedimentosBtn}                      xpath=//button[@data-member='BUT_GRU_PRO']
${TabelasFaturamentoPortesAtoMedicoBtn}                         xpath=//button[@data-member='BUT_ATO']
${TabelasFaturamentoPortesAnestesicosBtn}                       xpath=//button[@data-member='BUT_PORTES']
${TabelasFaturamentoPortesAtoMedicoSairBtn}                     xpath=//button[@data-member='BUT_SAIR']

${TabelasFaturamentoPortesAnestesicos}                          xpath=//a[@href='#CGTAB-CV_TAB_GRU_FAT']

${TabelasFaturamentoCodInput}                                   xpath=//input[@class='editor-text mode-search']


${TabelasFaturamentoDataVigenciaInput}                          xpath=//div[@class='ui-datefield ui-buttoninput ui-widget mode-edit']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']

${TabelasFaturamentoProcedimentosClick}                         xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']      
${TabelasFaturamentoProcedimentosInput}                         xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input[@row='1']

${TabelasFaturamentoValHonorarioClick}                          xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width']
${TabelasFaturamentoValHonorarioInput}                          xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input[@row='1']

${TabelasFaturamentoValOperacaoClick}                           xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${TabelasFaturamentoValOperacaoInput}                           xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input[@row='1']

${TabelasFaturamentoDescricaoDaTabelaInput}                     xpath=//div[@class='slick-cell b1 f1 selected active editable']//input

${TabelasFaturamentoTipoClick}                                  xpath=//div[@class='slick-cell b2 f2 slick-last-cell selected ui-fixed-width']
${TabelasFaturamentoTipoInput}                                  xpath=//div[@class='ui-combobox ui-buttoninput ui-widget mode-edit']//input[@type='text']


${TabelasFaturamentoPorteDoAtoMedClick}                         xpath=//div[@class='slick-cell b1 f1 selected active editable ui-error']//input
${TabelasFaturamentoPorteDoAtoMedInput}                         xpath=//div[@class='slick-cell b1 f1 selected active editable ui-error']//input

${TabelasFaturamentoValorDoPorteMedClick}                       xpath=//div[@class='slick-cell b3 f3 slick-last-cell selected active editable']//input
${TabelasFaturamentoValorDoPorteMedInput}                       xpath=//div[@class='slick-cell b3 f3 slick-last-cell selected active editable']//input


${TabelasFaturamentoPorteClick}                                 xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width']
${TabelasFaturamentoPorteInput}                                 xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input[@row='1']

${TabelasFaturamentoValorDoPorteClick}                          xpath=//div[@class='slick-cell b3 f3 slick-last-cell selected ui-fixed-width']
${TabelasFaturamentoValorDoPorteInput}                          xpath=//div[@class='slick-cell b3 f3 slick-last-cell selected ui-fixed-width active editable']//input[@row='1']


# ${TabelasFaturamentoCodigoClick}                                xpath=//div[@class='slick-cell b19 f19 selected']//div[@data-row='5']
${TabelasFaturamentoCodigoInput}                                xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-edit']//input[@type='text']

${TabelasFaturamentoPercentualClick}                            xpath=//div[@class='slick-cell b2 f2 slick-last-cell selected ui-fixed-width active editable']//input[@row='0']
${TabelasFaturamentoPercentualInput}                            xpath=//div[@class='slick-cell b2 f2 slick-last-cell selected ui-fixed-width active editable']//input[@row='0']

*** Keywords ***
