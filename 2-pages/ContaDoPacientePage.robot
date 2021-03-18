##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                               ../Config.robot
Resource                               ../1-resources/auxiliar/Genericos.robot

*** Variable ***
### Elementos
${ContaPacienteTxtAtendemento}              id=inp:cdAtendimento
${ContaPacienteTxtCodPaciente}              id=inp:cdPaciente
${ContaPacienteTxtNome}                     id=inp:lPacienteNmPaciente
${ContaPacienteTxtDataAtendimento}          id=inp:dtAtendimento
${ContaPacienteTxtDataAlta}                 id=inp:dtAlta

### Campo Tipo de Atendimento  
# ${ContaPacienteCboDataAlta}                 id=inp:tpAtendimento
${ContaPacienteTxtTipoAtendimento}          xpath=//input[@id='tpAtendimento_ac']
${ContaPacienteTxtCodConvenio}              id=inp:cdConvenio
${ContaPacienteTxtNomeConvenio}             id=inp:lConvenioNmConvenio
${ContaPacienteTxtCodPrestador}             id=inp:cdPrestador
${ContaPacienteTxtNomePrestador}            id=inp:lPrestadorNmPrestador
${ContaPacienteDivTabelaContas}             css=div[id='grdContas'] div[class='slick-viewport slick-viewport-top slick-viewport-left']
${ContaPacienteDivTabelaValores}            css=div[id='grdValores'] div[class='slick-viewport slick-viewport-top slick-viewport-left']
${ContaPacienteLinhaTabela}                 css=[role='row']
${ContaPacienteBtnImprimirConta}            id=btnImprimirConta
${ContaPacientePMensagem}                   class=notifications-item-text

### Configurações de impressão  
${ContaPacienteTxtSaidaRelatorio}           xpath=//div[@id='CV_PADRAO_PARAMETER']//input[@id='frames17_ac']
# ${ContaPacienteCboSaidaRelatorio}           xpath=//div[@id='CV_PADRAO_PARAMETER']//select[@class='ui-widget-content ui-corner-all is-desktop'][1]
${ContaPacienteTxtImpressora}               id=#frames19
${ContaPacienteCboTipoImpressao}            id=inp:tpImpressa
${ContaPacienteTxtTipoImpressao}            xpath=//div[@id='CV_PADRAO_PARAMETER']//input[@id='frames21_ac']
${ContaPacienteBtnImprimirRelatorio}        id=frames14

### Relatorio Caracter
${ContaPacienteContainerRelatorio}          xpath=//pre

*** Keywords ***
