##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Configuração de TISS por Convênio
${ConfiguracoesXpathFrame}      id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnOK}                        xpath=//ul[@class='dropdown-menu workspace-notifications-menu']//li//button
${inputVersao}                  xpath=//input[@id='inp:cdVersaoTiss']
### //*[@id='inp:nrLimiteGuias']
${btnAdicionar}                 xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${campoConvenio}                xpath=//div[@id='grdConvenioConfTiss']//div[@class='slick-cell b0 f0 selected ui-fixed-width']
${campoConvenioInput}           xpath=//div[@id='grdConvenioConfTiss']//div[@class='slick-cell b0 f0 selected ui-fixed-width']//input
${btnDetalhamento}              id=TAB_PRINCIPAL_btnDetalhamento
${btnExecutar}                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${btnSalvar}                    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${inputServico}                 xpath=//div[@id='dsSrv']//input
${inputElementoServico}         xpath=//div[@id='dsIdSrvProto']//input
${btnSair}                      xpath=//li[@id='toolbar']//li[@id='tb-exit']//a
${btnPesquisar}                 id=btnPesquisar
${campoGuiasLote}               xpath=//div[@id='TAB_PRINCIPAL_nrLimiteGuias']//input[@id='inp:nrLimiteGuias']
