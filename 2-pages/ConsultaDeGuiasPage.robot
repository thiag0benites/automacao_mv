##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa

${GuiaIdIframe}                                                id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${GuiaExecutarID}                                              xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${GuiaXpathAtendimento}                                        xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${GuiasCssDivLinhasResultadoBusca}                             css=div[id='grdGuia'] div[class^='ui-widget-content slick-row']
${GuiasCssDivLinhasResultadoClickTable}                        css=div[id='grdItGuia'] div[class^='ui-widget-content slick-row']
${GuiaCodigoPaciente}                                          xpath=//div[@id='cdPaciente']
