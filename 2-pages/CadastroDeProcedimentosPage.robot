##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Manutenção de Remessa
${ProcedimentosXpathFrame}      id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${codigoProced}                 xpath=//input[@id='inp:cdProFat']
${descricaoProced}              xpath=//input[@id='inp:dsProFat']
${unidadeProced}                xpath=//input[@id='inp:dsUnidade']
${grupoProced}                  xpath=//input[@id='inp:cdGruPro']
${sexoInputProced}              xpath=//div[@id='tpSexo']//input[@id='tpSexo_ac']
${btnSalvar}                    xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${pacoteProced}                 xpath=//div[@id='snPacote']//input[@id='snPacote_ac']
${lancaProcAtend}               xpath=//div[@id='snLancaProFatAtend']//input[@id='snLancaProFatAtend_ac']
${btnSearch}                    xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecutar}                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${porteProced}                  xpath=//div[@id='cdPorAne']//input[@id='inp:cdPorAne']
${auxiliaresProced}             xpath=//div[@id='nrAuxiliar']//input[@id='inp:nrAuxiliar']
${checkboxMD}                   xpath=//button[@id='inp:snOpme_btn']
${btnExcluir}                   xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a
    