##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa

${ManutencaoRemessaIdIframe}                                   id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML

${ManutencaoRemessaXpathConvenioInput}                         xpath=//div[@class='ui-buttoninput ui-widget ui-lovinput mode-search']//input[@class='ui-widget-content ui-buttoninput ui-corner-left']
${ManutencaoRemessaXpathDataCompetencia}                       xpath=//div[@class='slick-cell b3 f3 selected'][1]
${ManutencaoRemessaXpathDataCompetenciaInput}                  xpath=//div[@class='ui-datefield ui-buttoninput ui-widget mode-search']//input[@type='text']

${ManutencaoRemessaXpathRemessa}                               xpath=//div[@class='slick-cell b0 f0 selected']//div[@class='ui-text ui-state-readonly']
${ManutencaoRemessaXpathRemessaInput}                          xpath=//div[@class='slick-cell b0 f0 selected active editable']//input[@class='editor-text ui-state-readonly mode-edit']

${ManutencaoRemessaPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${ManutencaoRemessaExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a

${ManutencaoRemessaRelAtentimentoBtn}                          xpath=//div[@class='ui-layout-horizontal ui-center-vertical ui-box-horizontal ui-content-full-width ui-panel ui-widget']//button[@data-name='btnLoteAtendimento']//span
${ManutencaoRemessaNotaFiscalBtn}                              xpath=//div[@class='ui-layout-horizontal ui-center-vertical ui-box-horizontal ui-content-full-width ui-panel ui-widget']//button[@data-name='btnNotaFiscal']//span
${ManutencaoRemessaAbaResumo}                                  xpath=//a[@href='#CV_PAGE-RESUMO_NOTA']
${ManutencaoRemessaTelefone}                                   xpath=//div[@data-member='NR_FONE']//input[@class='ui-widget-content ui-corner-all VaCampoObrigatorio']
${ManutencaoRemessaImprimirNFBtn}                              xpath=//div[@class='ui-layout-horizontal ui-box-horizontal ui-center-horizontal ui-panel ui-widget']//button[@data-name='btnImprime']//span

${ManutencaoRemessaImprimirtBtn}                               xpath=//div[@class='ui-layout-horizontal ui-panel-align-center ui-panel-align-middle ui-box-horizontal ui-content-full-width ui-panel ui-widget']//button[1]
${ManutencaoRemessaSairBtn}                                    xpath=//div[@class='ui-layout-horizontal ui-panel-align-center ui-panel-align-middle ui-box-horizontal ui-content-full-width ui-panel ui-widget']//button[2]


*** Keywords ***
