##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource               ../Config.robot
Resource               ../1-resources/auxiliar/Genericos.robot
*** Variable ***
### Elementos da Pagina de Criação de remessas
${RemessaIdIframe}                           id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnSearch}                                 xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${campoAtendTable}                           xpath=//div[@class='slick-cell b0 f0 selected active editable']//input
${campoConvenio}                             xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//div[@id='CV_TAB_CANVAS_PAI-CV_TAB_PADRAO']//div[@id='CV_TAB_PADRAO_CV_TAB_PADRAO']//div[@id='CV_TAB_PADRAO_cdConvenio']//input[@id='inp:cdConvenio']
${campoPlano}                                xpath=//*[@id='inp:cdConPla']
${campoOrigem}                               xpath=//div[@id='CV_TAB_PADRAO_cdOriAte']//input[@id='inp:cdOriAte']
${campoDataInicial}                          xpath=//div[@id='CV_TAB_PADRAO_dtInicial']//input[@id='inp:dtInicial']
${campoDataFinal}                            xpath=//div[@id='CV_TAB_PADRAO_dtFinal']//input[@id='inp:dtFinal']
${btnPesquisar}                              xpath=//button[@id='CV_TAB_PADRAO_btnPesquisa']
${modalConfirmacaoRemessa}                   xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable'] 
${btnConfirmarCriacaoRemessa}                xpath=//div[@class='ui-dialog ui-corner-all ui-widget ui-widget-content ui-front ui-draggable']//button[@id='btnConfirma']
${campoBtnCriacaoRemessa}                    xpath=//div[@class=' ui-layout-positional ui-framepanel-content']//button[@id='btnCriaRemessa']
${abaAmbulatorio}                            xpath=//div[@id='CV_TAB_CANVAS_ATD_CV_TAB_CANVAS_ATD']//ul//li[2]
${campoAtendOpcaoAmbos}                      xpath=//div[@id='CV_TAB_PADRAO_tpAtendimento']//select[@id='inp:tpAtendimento']
${campoAtendOpcao}                           xpath=//input[@id='CV_TAB_PADRAO_tpAtendimento_ac']
${campoAtendOpcaoHospitalar}                 xpath=//div[@class='ui-widget ui-combobox ui-label-align-center ui-buttoninput ui-required ui-label-position-left mode-edit ui-widget-active']//select[@id='inp:tpAtendimento']//option[2]
${abaOrigem}                                 xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//ul//li[2]
${abaPlano}                                  xpath=//div[@id='CV_TAB_CANVAS_PAI_CV_TAB_CANVAS_PAI']//ul//li[3]
${abaPlanoInputSelecionarPlano}              xpath=//div[@class='grid-canvas grid-canvas-top grid-canvas-left']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${abaOrigemInputSelecionarOrigem}            xpath=//div[@class='grid-canvas grid-canvas-top grid-canvas-left']//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input
${campoQtdeContas}                           xpath=//input[@id='inp:qtContas']
${campoCompetenciaRemessa}                   xpath=//input[@id='inp:dtCompetencia']
${dataInicioRemessa}                         xpath=//input[@id='inp:dtInicio']
${dataFinalRemessa}                          xpath=//input[@id='inp:dtTermino']
