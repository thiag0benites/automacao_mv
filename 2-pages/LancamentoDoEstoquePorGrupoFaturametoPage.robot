##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Lançamento de estoque por grupo de faturamento
${ConfiguracoesXpathFrame}     id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${campoClasse}                 xpath=//div[@class='slick-cell b5 f5 slick-last-cell selected ui-fixed-width']
${campoClasseInput}            xpath=//div[@class='slick-cell b5 f5 slick-last-cell selected ui-fixed-width active editable']//input
${campoEstoque}                xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width'] 
${campoEstoqueInput}           xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input 
${campoSetor}                  xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width'] 
${campoSetorInput}             xpath=//div[@class='slick-cell b3 f3 selected ui-fixed-width active editable']//input 
${campoEspecie}                xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width']
${campoEspecieInput}           xpath=//div[@class='slick-cell b4 f4 selected ui-fixed-width active editable']//input
${grupoFat}                    xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${btnPesquisar}                xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecutar}                 xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnApagar}                   xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a
${btnSalvar}                   xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a