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

${FormularioDaNotaFiscalPesquisarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-search']//a
${FormularioDaNotaFiscalExecutarBtn}                                xpath=//li[@id='toolbar']//li[@id='tb-execute']//a
${FormularioDaNotaFiscalSalvarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-save']//a
${FormularioDaNotaFiscalAdicionarBtn}                               xpath=//li[@id='toolbar']//li[@id='tb-record-add']//a
${FormularioDaNotaFiscalApagarBtn}                                  xpath=//li[@id='toolbar']//li[@id='tb-record-remove']//a

${FormularioDaNotaFiscalCodigoInput}                                xpath=//div[@class='slick-cell b0 f0 selected ui-fixed-width active editable']//input[@row='0']

${FormularioDaNotaFiscalDescricaoClick}                             xpath=//div[@class='slick-cell b1 f1 selected active editable']//input[@row='0']
${FormularioDaNotaFiscalDescricaoInput}                             xpath=//div[@class='slick-cell b1 f1 selected active editable']//input[@row='0']

${FormularioDaNotaFiscalVisualizarFormularioClick}                  xpath=//div[@class='slick-cell b1 f1 selected active editable']//input[@row='0']
${FormularioDaNotaFiscalVisualizarFormularioInput}                  xpath=//div[@class='slick-cell b1 f1 selected active editable']//input[@row='0']

${FormularioDaNotaFiscalConvenioClick}                              xpath=//div[@data-member='NM_REPORT_NOTA_FISCAL_CONVENIO']
${FormularioDaNotaFiscalConvenioInput}                              xpath=//div[@data-member='NM_REPORT_NOTA_FISCAL_CONVENIO']//input[@name='nmReportNotaFiscalConvenio']

${FormularioDaNotaFiscalPacienteClick}                              xpath=//div[@data-member='NM_REPORT_NOTA_FISCAL_PACIENTE']
${FormularioDaNotaFiscalPacienteInput}                              xpath=//div[@data-member='NM_REPORT_NOTA_FISCAL_PACIENTE']//input[@name='nmReportNotaFiscalPaciente']

${FormularioDaNotaFiscalNomeDoRelatorioClick}                       xpath=//div[@data-member='NM_RECIBO_PACIENTE']
${FormularioDaNotaFiscalNomeDoRelatorioInput}                       xpath=//div[@data-member='NM_RECIBO_PACIENTE']//input[@name='nmReciboPaciente']

${FormularioDaNotaFiscalNumeroSequencialClick}                      xpath=//div[@data-member='NR_ID_SEQUENCIA_NOTA_FISCAL']
${FormularioDaNotaFiscalNumeroSequencialInput}                      xpath=//div[@data-member='NR_ID_SEQUENCIA_NOTA_FISCAL']//input[@name='nrIdSequenciaNotaFiscal']

${FormularioDaNotaFiscalTipoRPSClick}                               xpath=//div[@data-member='TP_RPS']
${FormularioDaNotaFiscalTipoRPSInput}                               xpath=//div[@data-member='TP_RPS']//input[@id='tpRps_ac']

${FormularioDaNotaFiscalSequencialDaNFClick}                        xpath=//div[@data-member='NR_INI_SEQUENCIA_NOTA_FISCAL']
${FormularioDaNotaFiscalSequencialDaNFInput}                        xpath=//div[@data-member='NR_INI_SEQUENCIA_NOTA_FISCAL']//input[@name='nrIniSequenciaNotaFiscal']

${FormularioDaNotaFiscalAteClick}                                   xpath=//div[@data-member='NR_FIM_SEQUENCIA_NOTA_FISCAL']
${FormularioDaNotaFiscalAteInput}                                   xpath=//div[@data-member='NR_FIM_SEQUENCIA_NOTA_FISCAL']//input[@name='nrFimSequenciaNotaFiscal']

${FormularioDaNotaFiscalSerieClick}                                 xpath=//div[@data-member='CD_SERIE']
${FormularioDaNotaFiscalSerieInput}                                 xpath=//div[@data-member='CD_SERIE']//input[@name='cdSerie']

${FormularioDaNotaFiscalAidfClick}                                  xpath=//div[@data-member='NR_AIDF']
${FormularioDaNotaFiscalAidfInput}                                  xpath=//div[@data-member='NR_AIDF']//input[@name='nrAidf']

${FormularioDaNotaFiscalValidadeClick}                              xpath=//div[@data-member='DT_VALIDA_USO']
${FormularioDaNotaFiscalValidadeInput}                              xpath=//div[@data-member='DT_VALIDA_USO']//input[@name='dtValidaUso']

${FormularioDaNotaFiscalObservacaoClick}                            xpath=//div[@data-member='DS_OBSERVACAO']
${FormularioDaNotaFiscalObservacaoInput}                            xpath=//div[@data-member='DS_OBSERVACAO']//input[@name='dsObservacao']

*** Keywords ***
