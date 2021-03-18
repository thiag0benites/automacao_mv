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

${GuiasDeAutorizacoesPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${GuiasDeAutorizacoesExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${GuiasDeAutorizacoesSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${GuiasDeAutorizacoesAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${GuiasDeAutorizacoesApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a

${GuiasDeAutorizacoesCodAtendimento}                             xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input[@row='0']
${GuiasDeAutorizacoesCodPreAtendimentoClick}                     xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width']  
${GuiasDeAutorizacoesCodPreAtendimentoInput}                     xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input[@row='0']
${GuiasDeAutorizacoesMaisDetalhesAba}                            xpath=//a[@id='TAB_GUIA_TAB_GUIA_tab1']
${GuiasDeAutorizacoesMotivoPendenciaClick}                       xpath=//div[@data-member='CD_MOTIVO_PENDENCIA_GUIA']//input[@type='text']
${GuiasDeAutorizacoesSalvarMaisDetalhes}                         xpath=//button[@data-action='btnSalvar_click'] 
${GuiasDeAutorizacoesAvisoOkBtn}                                 xpath=//button[@class='btn btn-primary']


#######################################





*** Keywords ***
