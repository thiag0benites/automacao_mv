##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Dados utilizados na execução dos testes
##################################################################################################################################
# Padrões: Para melhor organização utilizar o prefixo "dadosNomePagina" na criação das variáveis
# Exemplo:
#                                      ${dadosLoginUsuario}
##################################################################################################################################
*** Settings ***
# Resource                             ../../Config.robot
# Resource                             ../../Config_harman.robot

*** Variable ***
### Dados de Login
${dadosLoginUsuarioQaDevelop}          ANDREVASCONCELOS
${dadosLoginSenhaQaDevelop}            123456789
${dadosLoginUsuarioQaRelease}          USUARIOTESTADOR
${dadosLoginSenhaQaRelease}            123456789
${dadosLoginEmpresaQaRelease}          5 - HOSPITAL MV - MATRIZ
${dadosLoginEmpresaQaDevelop}          5 - HOSPITAL MV - MATRIZ


### Faturamento
${dadosProcedimentosVigencia}          01/01/2021

### SMF-3650:Verificar Valoração Automática na Tela 'Valores dos SMF3650'
${SMF3650CodProcedimento}              40316637
${SMF3650Procedimento}                 ANGIOTENSINA II
${SMF3650Tabela}                       CHN - ALLIANZ DIARIAS E TAXAS
${SMF3650CodTabela}                    21
${SMF3650VlHonorario}                  5,8
${SMF3650VlOperacional}                1,6

### SMF-5155:Cadastrar valor de procedimento em tabela de faturamento
${SMF5155CodProcedimento}              40316637
${SMF5155Procedimento}                 ANGIOTENSINA II
${SMF5155Tabela}                       CHN - ALLIANZ DIARIAS E TAXAS
${SMF5155CodTabela}                    21
${SMF5155VlHonorario}                  5,8
${SMF5155VlOperacional}                1,6

### SMF-5173:Excluir Cadastro valor de procedimento em tabela de faturamento que existem em contas fechadas
${SMF5173CodProcedimento}              40316637
${SMF5173Procedimento}                 ANGIOTENSINA II

### SMF-5178: Alterar Cadastro valor de procedimento em tabela de faturamento
${SMF5178CodProcedimento}              40316637
${SMF5178VlHonorario}                  5,8
${SMF5178VlOperacional}                1,6

### SMF-5179:Excluir Cadastro valor de procedimento em tabela de faturamento
${SMF5179CodProcedimento}              40316637

#############################################################################################################
### Manutenção de Remessas 
${dadosManutencaoRemessaConvenio}       84
${dadosManutencaoRemessaCompetencia}    11/2014
${dadosManutencaoRemessaNumRemessa}     9979
${dadosManutencaoRemessaTelefone}       (85)40023633

#############################################################################################################
### Manutenção de Remessas 
${dadosSaidaRelatorio}                  Arquivo
# ${dadosManutencaoRemessaCompetencia}    11/2014
# ${dadosManutencaoRemessaNumRemessa}     9979

#############################################################################################################
### Formulário Da Nota Fiscal
${dadosCodigoFormularioNF}                    10
${dadosDescricaoFormularioNF}                 Descrição Automatizada
${dadosConvenioFormularioNF}                  Convenio Automatizado
${dadosPacienteFormularioNF}                  Paciente Automatizada
${dadosRelatorioReciboFormularioNF}           Relatório Automatizado
${dadosNumeroSequencialFormularioNF}          1598575
${dadosTipoRpsFormularioNF}                   Recibo Provisório de Serviços
${dadosSequencialNfFormularioNF}              5521213  
${dadosAteFormularioNF}                       15615
${dadosSerieFormularioNF}                     12312
${dadosAidfFormularioNF}                      AIDF AUTOMATIZADO
${dadosValidadeFormularioNF}                  17/02/2021
${dadosObservacaoFormularioNF}                Observação Automatizada




#############################################################################################################
${dadosDescricaoCancelamento}           Descrição de Cancelamento - Automatizada 
${dadosNumTipo}                         Consulta
${dadoSaidaRelatorio}                   Arquivo



#############################################################################################################
### FATUR - 1.10:ENTREGA DE REMESSA
${dadosCodRemessa}                      29084
${dadosDataEnvio}                       08/11/2021
${dadosDataEntrega}                     08/12/2021
${dadosDataPrevista}                    31/12/2021
${dadosCapaLote}                        021578

#############################################################################################################
### FATUR - 1.17:IMPRESSÃO DE FATURA
${dadosCodApresentacao}                     6
${dadosQuebraDaFatura}                      Grupo de Faturamento / Grupo de Procedimento
${dadosKitSeparado}                         Sim
${dadosResumoKit}                           Sim
${dadosExibirLogo}                          Sim
${dadosDataHora}                            Data / Hora
${dadosImprimeAcrescimo}                    Grupo
${dataHoraProcedimento}                     Data/Hora
${dadosImprimeAcrescimoProcedimento}        Grupo
${dadosSqResumoFatura}                      6
${dadosSeqDetalheFatura}                    6

#############################################################################################################
### FATUR - 1.15: TABELAS DE FATURAMENTO
${dadosCodTabelasDeFaturamento}             6
${dadosDataVigencia}                        10/10/2010
${dadosProcedimento}                        10101012
${dadosValHonorario}                        75
${dadosValOperacao}                         102
${dadosDescricaoDaTabela}                   DESCRIÇÃO AUTOMATIZADA
${dadosTipoReal}                            Real
${dadosTipoCbhpm}                           CBHPM
${dadosPorteDoAtoMed}                       8
${dadosValorDoPorteMed}                     60
${dadosPorte}                               6
${dadosValorDoPorte}                        500
${dadosCodigo}                              10
${dadosPercentual}                          35



### FATUR - 1.6:CENTRAL DE GUIAS
#############################################################################################################

### SMF-3899:Consultar Guia SADT única para Lançamentos Laboratoriais e Exames
${campoNumAtendimento}                  1000002072 
### SMF-3908:Consultar Guia com Alteração de Agendamento por Lançamento Manual
${campoGuiaSenha}                       1642
###Número do procedimento referente à CHAGAS
${campoDescProcedimentoConv}            BIOPSIA ENDOSCOPICA DE BEXIGA
${campoCodPaciente}                     818218
#############################################################################################################

#############################################################################################################
### FATUR - CRIAÇÃO DE REMESSA
#############################################################################################################

### SMF-56:Criar Remessas Ambulatoriais   
##mudar
${numConvenioSMF56}                     5
${numPlanoSMF56}                        1 
${origemSMF56}                          59
${dataInicialSMF56}                     01/01/2014   
${dataFinalSMF56}                       01/08/2020

### SMF-961:Criação de remessas de convênios para tipo de atendimento "Ambos"   
${numConvenioSMF961}                     55
${numPlanoSMF961}                        1 
${origemSMF961}                          59
${dataInicialSMF961}                     01/02/2015   
${dataFinalSMF961}                       01/02/2020

### SMF-2963:Criar Remessa
${numConvenioSMF2963}                    78
${numPlanoSMF2963}                       %  
${origemSMF2963}                         59
${dataInicialSMF2963}                    01/01/2014   
${dataFinalSMF2963}                      01/10/2020

### SMF-964:Criação de remessas de convênios para tipo de atendimento "Ambulatorial"
${numConvenioSMF964}                     103
${numPlanoSMF964}                        % 
${origemSMF964}                          149
${dataInicialSMF964}                     01/01/2014   
${dataFinalSMF964}                       01/10/2020
${valorCampoAtendCombobox}               Ambulatorial

### SMF-965:Criação de remessas de convênios para tipo de atendimento "Hospitalar"
${numConvenioSMF965}                     84
${numPlanoSMF965}                        1 
${origemSMF965}                          59
${dataInicialSMF965}                     01/01/2014   
${dataFinalSMF965}                       01/10/2020
${valorCampoAtendCombobox2}              Hospitalar

### SMF-967:Criação de remessas de convênios com seleção de plano(s)
${numConvenioSMF967}                     66
${campoSelecionarPlano}                  1
${dataCompetenciaPlano}                  01/2020
${dataInicioPlano}                       01/02/2020
${dataFinalPlano}                        01/06/2020

### SMF-971:Criação de remessas de convênios com seleção de origem(ns)
${numConvenioSMF971}                     165
${origemSMF971}                          59
${dataCompetenciaOrigem}                 01/2020
${dataInicioOrigem}                      01/02/2020
${dataFinalOrigem}                       01/07/2020

### SMF-974:Criação de remessas de convênios com limitação de quantidade de contas
${numConvenioSMF974}                     60
${origemSMF974}                          149
${dataInicialSMF974}                     01/08/2016   
${dataFinalSMF974}                       01/08/2020
${valorCampoAtendCombobox3}              Ambos
${qtdeContas}                            2


#############################################################################################################
### FATUR - FATURAS E REMESSAS
#############################################################################################################
${numConvenioSMF59}                        99
${numCompetenciaSMF59}                     01/2014

${numConvenioSMF4022}                      123
${numCompetênciaSMF4022}                   12/2020

${descricaoSMF968}                         BRADESCO SAUDE
${numConvenioSMF4023}                      98

${descricaoSMF4024}                        CAPESAUDE
${descricaoSMF970}                         BRB SAUDE
${descricaoSMF973}                         ALLIANZ SAUDE

${descricaoSMF975}                         PARTICULAR HCN

#############################################################################################################
### FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE
#############################################################################################################
### SMF-4193:Consultar Contas de Pacientes pela data de Alta
${SMF4193DtAlta}                         09/12/2020

### SMF-4838:Consultar Contas de Pacientes pelo tipo do Atendimento
${SMF4838TipoAtendimento}                Urgência

### SMF-4840:Pesquisar contas de pacientes pelo convênio
${SMF4840ConvenioAtendimento}            BRADESCO SAUDE

### SMF-4851:Pesquisar contas de pacientes Data do Atendimento
${SMF4851DtAtendimento}                  05/07/2019

### SMF-4853:Consultar Contas de Pacientes pelo código do Prestador
${SMF4853CodPrestador}                   10072

### SMF-4856:Consultar Contas de Pacientes pela Número do atendimento
${SMF4856NumAtendimento}                 1000001524

### SMF-4861:Imprimir Relatório
${SMF4861NumAtendimento}                 1000001524
${SMF4861SaidaRelatorio}                 Tela
${SMF4861TipoImpressao}                  Caracter

### SMF-4864:Consultar Contas de Pacientes pelo tipo do Atendimento com um dado Inválido
${SMF4864TipoAtendimentoInvalido}        Invalido
${SMF4864MsgEsperada}                    Nenhum registro foi recuperado. Informe a consulta novamente. 

#############################################################################################################
#                        CADASTRO DE PROCEDIMENTOS
#############################################################################################################
# SMF-5040 : Cadastrar Procedimento de Convênio
${codProcedimentoSMF5040}                 00000169
${descricaoProcedSMF5040}                 TESTE AUTOMATIZADO CADASTRO PROCEDIMENTO 2
${unidadeProcedSMF5040}                   UN
${sexoProcedSMF5040}                      Feminino
${grupoProcedSMF5040}                     0

# SMF-5064 : Realizar consulta de Procedimento de Convênio
${codProcedimentoSMF5064}                 00000008

# SMF-5070 : Cadastrar Procedimento de Convênio com porte Anestesico
${codProcedimentoSMF5070}                 00000139
${descricaoProcedSMF5070}                 TESTE AUTOMATIZADO CADASTRO PORTE ANESTESICO
${unidadeProcedSMF5070}                   UN       
${sexoProcedSMF5070}                      Masculino            
${grupoProcedSMF5070}                     0             
${porteProcedSMF5070}                     0
${auxiliaresProcedSMF5070}                0

# SMF-5086 : Cadastrar Procedimento de Convênio quando for procedimento Materiais
${codProcedimentoSMF5086}                00000168
${descricaoProcedSMF5086}                Teste automatizado cadastro proced. materiais
${unidadeProcedSMF5086}                  UN  
${sexoProcedSMF5086}                     Feminino
${grupoProcedSMF5086}                    1

# SMF-5103 : Cadastrar Procedimento de Convênio quando for procedimento Medicamento
${codProcedimentoSMF5103}                00000483    
${descricaoProcedSMF5103}                Automação Cadastro Proced. Medicamento    
${unidadeProcedSMF5103}                  UN
${sexoProcedSMF5103}                     Masculino   
${grupoProcedSMF5103}                    7

# SMF-5042 : Excluir Procedimento de Convênio
${codProcedimentoSMF5042}                00000119             

#############################################################################################################
#                   FATUR - 1.33:RELATÓRIO DE FATURA INDIVIDUAL POR DATA
#############################################################################################################

# SMF-55:Imprimir Fatura Guias TISS
${dataInicialSMF55}                     01/01/2014
${dataFinalSMF55}                       01/01/2018

# SMF-5925:Imprimir Fatura Individual por Data informando o periodo
${dataInicialSMF5925}                   01/01/2014
${dataFinalSMF5925}                     01/01/2018

# SMF-5942:Imprimir relatórios de fechamento de contas por Convênio
${numConvenioSMF5942}                   63
${dataInicialSMF5942}                   01/01/2013
${dataFinalSMF5942}                     01/01/2019

# SMF-5944:Consultar por convênio e Data de Alta que não possui faturas para serem emitidas
${numConvenioSMF5944}                   20

# SMF-5950:Imprimir Fatura Individual por Data informando o pelo número da Conta
${numContaSMF5950}                      7397

# SMF-5953:Imprimir Fatura Individual por Data informando o pela Origem do Atendimento
${numOrigem}                            149

# SMF-5954:Imprimir Fatura Individual por Data informando o numero do Atendimento
${numAtend}                             1000001938

# SMF-6021:Imprimir Fatura Individual por Data informando o Tipo de conta
${tipoDaConta}                           Ambulatorial - A / E / U
${dataInicialSMF6021}                    01/01/2014
${dataFinalSMF6021}                      01/02/2016  

# SMF-6025:Imprimir relatórios de faturamento com exceção dos convênios selecionados
${numConvTable}                          55

# SMF-6034:Reimprimir Fatura Individual por Data informando o periodo
${dataInicialSMF6034}                    01/05/2014
${dataFinalSMF6034}                      02/06/2017

# SMF-6035:Fechar contas sem imprimir Faturas
${dataInicialSMF6035}                    01/02/2015
${dataFinalSMF6035}                      01/02/2018

#############################################################################################################
#                   FATUR - 1.21:IMPORTAÇÃO DE VALORES SIMPRO
#############################################################################################################

# SMF-5185: Importar Dados SIMPRO com campo "vazio"
#####  N/A

# SMF-5184:Consultar Importação Dados SIMPRO por data inexistente

${dataInexistenteSMF5184}                01/01/1900

# SMF-5183: Consultar Importação Dados SIMPRO por data

${dataExistente}                         31/01/2021  

# SMF-5182:Cancelar a importação dos Dados SIMPRO

${dataVigenciaSMF5182}                  31/01/2021
${tipoImportacaoSMF5182}                Medicamentos

# SMF-5181:Importar Dados SIMPRO
${tipoImportacaoSMF5181}
${dataVigenciaSMF5181}
#                   FATUR - CONTROLE DE GUIAS - CENTRAL DE GUIAS
#############################################################################################################

# SMF-4139:Pesquisar Guia pelo Atendimento do Paciente
${campoNumAtend}                          1000002127

# SMF-4140:Criar Guia de Internação Automaticamente com Procedimento do Atendimento Vinculado
${campoNumAtendSMF4140}                   1000002140

# SMF-4147:Criar Guia de Internação Automaticamente sem o Procedimento do Atendimento Vinculado
${campoNumAtendSMF4147}                    1000002072

# SMF-4149:Aplicar Número de Guia Disponível, Automaticamente, da Faixa Configurada
${campoNumAtendSMF4149}                    1000002121
${campoInternacao}                         Internação

# SMF-4150:Aplicar Número de Guia Manualmente
${nrGuiaSMF4150}                           9091
${campoNumAtendSMF4150}                    1000002120

# SMF-2317:Criar Guia Manualmente
${tipoAtendSMF2317}                        OPME
${campoNumAtendSMF2317}                    199379

# SMF-2386:Autorizar Guias
${campoNumAtendSMF2386}                   1000002120
${campoPendente}                          Internação
${campoSituacaoSMF2386}                   Autorizada
${campoNumGuia}                           1245

# SMF-4155:Excluir Guia Autorizada
${campoNumAtendSMF4155}                   1000002086
${campoAutorizada}                        Autorizada

# SMF-4157:Autorizar Guia com Máscara de Senha sem Validação de Caracter Especial
${campoNumAtendSMF4157}                  1000002086
${senhaSMF4157}                          123445
${campoSolicitada}                       Solicitada

# SMF-4251:Autorizar Guia com Máscara de Senha com Validação de Caracter Especial
${senhaSMF4251}                          1@123#
${campoNumAtendSMF4251}                  1000002086

# SMF-4159:Anexar Arquivos em Guia
${guiaTipo}                              Consulta
${guiaDescrição}                         Paciente precisou realizar consulta emergencial
${campoNumAtendSMF4159}                  1000002128
${campoInternacao}                       Internação

# SMF-4161:Excluir Arquivo Anexo em Guia
${campoNumAtendSMF4161}                

# SMF-4167:Criar Histórico de Observações para a Guia
${campoNumAtendSMF4167}
${campoDescSMF4167}

# SMF-4170:Criar Guia de Consulta Automaticamente com Procedimento do Atendimento Vinculado
${campoNumAtendSMF4170}                1000002086 

# SMF-4171:Criar Guia de Consulta Automaticamente sem o Procedimento do Atendimento Vinculado
${campoNumAtendSMF4171}                1000002020

# SMF-4175:Criar Automaticamente Guia do tipo "Medicamentos"
${campoNumAtendSMF4175}                 1000001848

# SMF-4178:Criar Automaticamente Guia do tipo "SADT"
${campoNumAtendSMF4178}                 1000002140   

# SMF-4180:Criar Automaticamente Guia do tipo "Materiais"
${campoNumAtendSMF4180}                 1000002131

# SMF-4181:Criar Automaticamente Guia do tipo "OPME"
${campoNumAtendSMF4181}                 1000002128

# SMF-4182:Criar Automaticamente Guia do tipo "Procedimento"
${campoNumAtendSMF4182}                 1000002127

# SMF-3790:Valorar Guias para Fornecedor Direto

# SMF-2385:Validar a Senha de Autorização da Guia
${valSenha}                                  1000002121     
${campoNumAtendSMF2385}                      

# SMF-2295:Marcar Procedimentos em Guia de OPME como Fatura Direto
${tipoOPME}                                  OPME

# SMF-3670:Gerar Cobrança Individualizada para Sessões de Tratamento com Controle de Guias com Sucesso
${campoNumAtendSMF3670}

# SMF-3680:Gerar Cobrança Individualizada para Sessões de Tratamento com Guia Autorizada com Sucesso
${campoNumAtendSMF3680}

# SMF-3789:Excluir o Motivo de Pendência Informado na Central de Guias com Sucesso
${valorPendenciaSMF3789}  
${campoNumAtendSMF3789}                      1000002140

# SMF-3817:Informar Motivo de Pendência na Guia com Sucesso
${valorPendencia}
${campoNumAtendSMF3817}

# SMF-7735:Solicitar Guia com Impressão
${tipoGuiaSMF7735}
${campoNumAtendSMF7735}

# SMF-7736:Editar Guias com Alteração do Tipo
${tipoGuiaSMF7736}
${campoNumAtendSMF7736}
${tipoGuiaAlteracao}
${valorAlteracao}                Internação

#                   FATUR - CONFIGURAÇÃO DE TISS POR CONVÊNIO
#############################################################################################################
# SMF-5413:Cadastrar o TISS por Convênio
${numConvenioSMF5413}             63
${numVersaoSMF5413}               3.04.00

# SMF-5656:Validar Serviços do Detalhamento do TISS Versão 3.0 ou superior
${numVersaoSMF5656}               3.00.01
${numConvenioSMF5656}             103

# SMF-2075:Configurar Convênios para o TISS para Versões Anteriores à 3
${numConvenioSMF2075}             60
${numConvenioSMF2075}             2.02.03
${numGuiasLote}                   80
        
# SMF-2784:Configurar Convênios para o TISS a Partir da Versão 3
${numConvenioSMF2784}             55

# SMF-5439:Configuração do código de validação com a opção "1 - Utilizar"
${valorServicoSMF5439}            VERIFICAÇÃO ELEGIBILIDADE
${numConvenioSMF5439}             55

#                   FATUR - LANÇAMENTO DO ESTOQUE POR GRUPO DE FATURAMENTO
#############################################################################################################

# SMF-5372:Cadastrar grupos de faturamento para Materiais
${valorGrupoFat}                    14
${valorSetor}                       1738
${valorEstoque}                     3
${valorClasse}                      1
${valorEspecie}                     12

# SMF-5359:Cadastrar grupos de faturamento para os lançamentos automáticos
${valorGrupoFatSMF5359}            1
${valorSetorSMF5359}               657
${valorEstoqueSMF5359}             32
${valorClasseSMF5359}              1
${valorEspecieSMF5359}             7

# SMF-5370:Excluir um registro da tela de lançamento por grupos de faturamento
${valorGrupoFatSMF5370}            9

# SMF-5366:Alterar cadastro para os lançamentos de estoque por grupo de Faturamento
${valorGrupoFatSMF5366}            1
${valorSetorSMF5366}               657
${valorEstoqueSMF5366}             32
${valorClasseSMF5366}              1
${valorEspecieSMF5366}             7

# SMF-5363:Consultar grupos de faturamento
${valorGrupoFatSMF5363}            7


#############################################################################################################
#                   FATUR - 1.12:MONITORAÇÃO FATURAMENTO TISS
#############################################################################################################

# SMF-52:Pesquisar Monitoração de Faturamento - TISS
${campoNumConvenio}                       20
${numRemessa}                             28121

# SMF-284:Imprimir o Relatório de Monitoração de Faturamento


#############################################################################################################
#                   FATUR - CONTA DO ATENDIMENTO (HOSPITALAR)
#############################################################################################################
${codAtendimentoSMF68}                    1000002179
${codAtendimentoSMF929}                   1000002140
${numeroProcedSMF929}                     40316637
${numeroContaAberta}                      271823  
${numeroContaAbertaSMF929}                255307
${numGrupo}                               7
${numProced}                              30906083                              
${campoQtde}                              1
${campoSetor}                             678
${campoSetorE}                            678
${campoCodigoMedico}                      01                      
${nomeMedico}                             3329
${campoPrest}                             100437
${campoAtiv}                              01
${codAtendimentoSMF931}                   1000002186
${numeroContaAbertaSMF931}                273344
${numGrupoSMF931}                         14
${numProcedSMF931}                        08007963
${campoQtdeSMF931}                        1
${campoSetorSMF931}                       654 
${campoSetorESMF931}                      654
${codAtendimentoSMF933}                   1000002149
${numeroContaAbertaSMF933}                259862
${numGrupoSMF933}                         7
${numProcedSMF933}                        10101039
${campoQtdeSMF933}                        1
${campoSetorSMF933}                       657
${campoSetorESMF933}                      657
${campoPrestSMF933}                       100437
${campoAtivSMF933}                        07
${codAtendimentoSMF942}                   1000002140
${numeroContaAbertaSMF942}                255307
${valorDataFinal}                          
${codAtendimentoSMF944}
${valorDataFinalSMF944}
${codAtendimentoSMF3575}                  1000002140 
${numeroContaAbertaSMF3575}               255307
${numCodPrestador}                        100437
${numKit}                                 23
${campoQtdeSMF3575}                       1
${campoSetorSMF3575}                      678
${codAtendimentoSMF958}                   1000002131
${numeroContaAbertaSMF958}                255082
${codAtendimentoSMF8291}                  1000002128 
${numeroContaAbertaSMF8291}               254002
${codAtendimentoSMF69}                    1000002123
${numeroContaAbertaSMF69}                 253139
${codAtendimentoSMF4561}                  1000002050
${numeroContaAbertaSMF4561}               221710        


# *** Keywords ***
# Run Keyword If                       ${ambiente} == qadevelop           ${dadosLoginEmpresa}               5 - HOSPITAL MV - MATRIZ
# Run Keyword If                       ${ambiente} == qarelease           ${dadosLoginEmpresa}               5-HOSPITAL MATRIZ - MV SISTEMAS

# if ${ambiente} == "qadevelop":
#                                      ### Dados de Login develop
#                                      ${dadosLoginEmpresa}               5 - HOSPITAL MV - MATRIZ
# elif ${ambiente} == "qarelease":
#                                      ### Dados de Login release
#                                      ${dadosRelLoginEmpresa}            5-HOSPITAL MATRIZ - MV SISTEMAS
