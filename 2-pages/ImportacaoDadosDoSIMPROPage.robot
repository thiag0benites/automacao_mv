##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                                       ../Config.robot

*** Variable ***
### Elementos da Pagina de Importação de dados do SIMPRO
# ${ProcedimentosXpathFrame}      id=child_APOIO.HTML,ATEND.HTML,CONEC.HTML,CONTR.HTML,DIAGN.HTML,FATUR-CONV.HTML,FATUR-SUS.HTML,FINAN.HTML,GLOBAL.HTML,INTER.HTML,PAGU.HTML,PLANO.HTML,SUPRI.HTML
${btnImportar}                  xpath=//button[@id='btnImportar']      
${dataImportacao}               xpath=//input[@id='inp:dtImportacao']
${btnPesquisar}                 xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${btnExecutar}                  xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${dataVigencia}                 xpath=//input[@id='inp:dtVigencia']
${tipoImportacao}               xpath=//input[@id='tpMedicamento_ac']
${checkboxNovoLayout}           xpath=//button[@id='inp:snLeiauteNovo_btn']
${raddioButtonValorFabrica}     xpath=//button[@id='rb_TpVlrPagamento_VlrFabrica_btn']
${raddioButtonValorCliente}     xpath=//button[@id='rb_TpVlrPagamento_VlrCliente_btn']
${btnCancelar}                  xpath=//button[@id='btnCancelar']
${btnUpload}                    xpath=//input[@name="file[]"]
${txtArquivoOrigem}             id=inp:nmArquivo
${btnUpload}                    id=btnFindFile