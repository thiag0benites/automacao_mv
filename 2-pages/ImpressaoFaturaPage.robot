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

${ImpressaoFaturaIdIframe}                                   xpath=//div[@id='react']//div[@class='workspace-container']//div[@class='workspace-app-container']//iframe[@id='child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML']
${ImpressaoFaturaPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${ImpressaoFaturaExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${ImpressaoFaturaSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${ImpressaoFaturaAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a


${ImpressaoFaturaAbaGrupoProcedimento}                       xpath=//a[@href='#CGTAB-CV_TAB_GRU_PRO']
${ImpressaoFaturaAbaGrupoFaturamento}                        xpath=//a[@href='#CGTAB-CV_TAB_GRU_FAT']

${ImpressaoFaturaCodApresentacaoInput}                       xpath=//div[@class='ui-widget ui-textinput ui-label-align-start ui-label-position-top mode-search ui-widget-active']//input[@class='ui-widget-content ui-corner-all']
${ImpressaoFaturaIdQuebraFaturaInput}                        id=tpFatura_ac
${ImpressaoFaturaIdKitSeparadoInput}                         id=snImprimeKit_ac
${ImpressaoFaturaIdResumoKitInput}                           id=snResumoKit_ac
${ImpressaoFaturaIdExibirLogoInput}                          id=snExibeLogoHospital_ac

#Grupo Faturamento
${ImpressaoFaturaImprimeDataHoraClick}                       xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd']//div[@class='slick-cell b3 f3']//div[@data-row='5']
${ImpressaoFaturaImprimeDataHoraInput}                       xpath=//div[@class='slick-cell b3 f3 selected active editable']//div[@class='ui-combobox ui-buttoninput ui-widget mode-edit']//input[@row='5']

${ImpressaoFaturaImprimiAcrescimoClick}                      xpath=//div[@class='slick-cell b19 f19 selected']//div[@data-row='5']
${ImpressaoFaturaImprimiAcrescimoInput}                      xpath=//div[@class='slick-cell b19 f19 selected active editable']//div[@class='ui-combobox ui-buttoninput ui-widget mode-edit']//input[@row='5']

${ImpressaoFaturaImprimiHECheckBox}                          xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b5 f5 selected']//div[@data-row='5']//button[@data-member='SN_IMPRIME_HE']
${ImpressaoFaturaImprimiProcCheckBox}                        xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b7 f7 selected']//div[@data-row='5']//button[@data-member='SN_IMPRIME_PERC_PROC']
${ImpressaoFaturaImprimiFPCheckBox}                          xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b10 f10 selected']//div[@data-row='5']//button[@data-member='SN_IMPRIME_FP']
${ImpressaoFaturaImprimiCRMCheckBox}                         xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b14 f14 selected']//div[@data-row='5']//button[@data-member='SN_IMPRIME_CRM']
${ImpressaoFaturaImprimiCPFCheckBox}                         xpath=//div[@id='CGTAB-CV_TAB_GRU_FAT']//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b16 f16 selected']//div[@data-row='5']//button[@data-member='SN_IMPRIME_CPF']

#Grupo Procedimento 1
${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraClick}      xpath=//div[@class='ui-widget-content slick-row even']//div[@class='slick-cell b3 f3']//div[@data-row='6']
${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraInput}      xpath=//div[@class='slick-cell b3 f3 selected active editable']//div[@class='ui-combobox ui-buttoninput ui-widget mode-edit']//input[@row='6']

${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoClick}     xpath=//div[@class='slick-cell b14 f14 selected']//div[@data-row='6']
${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoInput}     xpath=//div[@class='slick-cell b14 f14 selected active editable']//input[@row='6']

${ImpressaoFaturaGrupoProcedimentoImprimiPagoCheckBox}       xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b6 f6 selected']//div[@data-row='6']
${ImpressaoFaturaGrupoProcedimentoImprimiProcCheckBox}       xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b7 f7 selected']//div[@data-row='6']
${ImpressaoFaturaGrupoProcedimentoImprimiFPCheckBox}         xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b12 f12 selected']//div[@data-row='6']
${ImpressaoFaturaGrupoProcedimentoImprimiPrestadorCheckBox}  xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b5 f5 selected']//div[@data-row='6']

#Grupo Procedimento 2
${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraClick}      xpath=//div[@class='ui-widget-content slick-row even']//div[@class='slick-cell b3 f3']//div[@data-row='8']
${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraInput}      xpath=//div[@class='slick-cell b3 f3 selected active editable']//div[@class='ui-combobox ui-buttoninput ui-widget mode-edit']//input[@row='8']

${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoClick}     xpath=//div[@class='slick-cell b14 f14 selected']//div[@data-row='8']
${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoInput}     xpath=//div[@class='slick-cell b14 f14 selected active editable']//input[@row='8']

${ImpressaoFaturaGrupoProcedimento2ImprimiPagoCheckBox}       xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b6 f6 selected']//div[@data-row='8']
${ImpressaoFaturaGrupoProcedimento2ImprimiProcCheckBox}       xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b7 f7 selected']//div[@data-row='8']
${ImpressaoFaturaGrupoProcedimento2ImprimiFPCheckBox}         xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b12 f12 selected']//div[@data-row='8']
${ImpressaoFaturaGrupoProcedimento2ImprimiPrestadorCheckBox}  xpath=//div[@class='ui-widget-content slick-row even active']//div[@class='slick-cell b5 f5 selected']//div[@data-row='8']

#Código Já Existente
${ImpressaoFaturaGrupoProcedimentoClickGrid}                  xpath=//div[@class='ui-widget-content slick-row even']//div[@class='slick-cell b3 f3']//div[@data-row='8']

${ImpressaoFaturaGrupoProcedimentoAddCodigo}                  xpath=//div[@class='slick-cell b0 f0 selected active editable']//input[@row='9']
# ${ImpressaoFaturaGrupoProcedimentoAddCodigo}                  xpath=//div[@class='slick-cell b0 f0 selected active editable']//input[@row='9']

${ImpressaoFaturaGrupoProcedimentoResumoFaturaClick}          xpath=//div[@class='slick-cell b1 f1 selected']//div[@data-row='9']
${ImpressaoFaturaGrupoProcedimentoResumoFaturaInput}          xpath=//div[@class='slick-cell b1 f1 selected active editable']//input[@row='9']

${ImpressaoFaturaGrupoProcedimentoDetalheFaturaClick}         xpath=//div[@class='ui-widget-content slick-row odd active']//div[@class='slick-cell b2 f2 selected']//div[@data-row='9']
${ImpressaoFaturaGrupoProcedimentoDetalheFaturaInput}         xpath=//div[@class='slick-cell b2 f2 selected active editable']//input[@row='9']


*** Keywords ***
