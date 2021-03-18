##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Monitoração e Faturamento TISS
${ProcedimentosXpathFrame}      id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnRecGlosas}                 xpath=//button[@id='btnEnvioRevisao']
${btnCapaGlosas}                xpath=
${campoConvenioInput}           xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${CssDivLinhas}                 css=div[id='grdRemessaFatura'] div[class^='ui-widget-content slick-row']
${btnFaturamento}               id=btnEnvioFaturamento
${btnProtocolo}                 id=btnInfoProtocolo
