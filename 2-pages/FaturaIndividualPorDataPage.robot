##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa

${RelatoriosIdIframe}                       id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${dataInicial}                              xpath=//input[@id='inp:dtInicial']
${dataFinal}                                xpath=//input[@id='inp:dtFinal']
${btnImprimirGuiaTISS}                      xpath=//button[@id='btnGerarRelatorioTiss']
${btnImprimirFaturas}                       xpath=//button[@id='btnGerarRelatorio']
${radioBtnResumoInternacao}                 xpath=//div[@id='rb_RbGuias_RbInternacao_rb_RbGuias_RbInternacao']//button[@id='rb_RbGuias_RbInternacao_btn']
${radioBtnGuiaDeSPSADT}                     xpath=//div[@id='rb_RbGuias_RbSadt_rb_RbGuias_RbSadt']//button[@id='rb_RbGuias_RbSadt_btn']
${btnImprimir}                              xpath=//button[@id='btnSolicita']
${btnImprimirFatura}                        xpath=//button[@id='btnGerarRelatorio']
${campoConvenio}                            xpath=//input[@id='inp:cdConvenio']
${abaContas}                                xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//ul//li[3]
${campoConta}                               xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoNomeDoPaciente}                      xpath=//div[@class='slick-cell b1 f1 selected ui-fixed-width active editable']//input
${campoTipo}                                xpath=//div[@class='slick-cell b2 f2 selected ui-fixed-width active editable']//input
${abaOrigem}                                xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//ul//li[4]
${campoOrigem}                              xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${btnPesquisar}                             xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecutar}                              xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${abaAtendimento}                           xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//ul//li[2]
${numAtendimento}                           xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${tipoConta}                                xpath=//input[@id='CV_TAB_PADRAO_tpConta_ac']
${campoConvenioTable}                       xpath=//div[@id='CV_TAB_PADRAO_grdConvenioExeto']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoConvenio2}                           xpath=//div[@id='CV_TAB_PADRAO_grdConvenioExeto']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${checkboxFechadas}                         xpath=//button[@id='inp:chkFechadas_btn']
${checkboxSMF6035}                          xpath=//button[@id='inp:chkFecharSemImprimir_btn']