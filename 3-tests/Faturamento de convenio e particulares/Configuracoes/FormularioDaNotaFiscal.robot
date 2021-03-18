#################################################################################################################################################################
# Autor: Denner Ricardo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\NotaFiscalDoConvenio.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\NotaFiscalDoConvenio.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\NotaFiscalDoConvenio.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\NotaFiscalDoConvenio.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/FormularioDaNotaFiscalSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_config_form_nf
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-2711:Cadastrar Formulário de Nota Fiscal
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2711"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Formulário da Nota Fiscal"
    Usuário deverá informar o <Descrição> "${dados}[DescricaoFormularioNF]" 
    # Usuário deverá informar o <Visualizar este formulário na NF avulsa?> "${122}" #### Não localiza  ####
    Usuário deverá informar o <Convênio> "${dados}[ConvenioFormularioNF]", <Paciente> "${dados}[PacienteFormularioNF]"
    Usuário deverá informar o <Nome do Relatório para Impressão do Recibo do Paciente> "${dados}[RelatorioReciboFormularioNF]"
    Usuário deverá informar o <Número Sequencial da Nota Fiscal> "${dados}[NumeroSequencialFormularioNF]", <Tipo de RPS> "${dados}[TipoRpsFormularioNF]", <Sequencial da NF. De> "${dados}[SequencialNfFormularioNF]"
    Usuário deverá informar o <Até> "${dados}[AteFormularioNF]", <Série> "${dados}[SerieFormularioNF]", <AIDF> "${dados}[AidfFormularioNF]"
    Usuário deverá informar o <Validade> "${dados}[ValidadeFormularioNF]", <Observação> "${dados}[ObservacaoFormularioNF]"

SMF-5253:Alterar Formulário de Nota Fiscal
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5253"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Formulário da Nota Fiscal"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código> "${dados}[CodigoFormularioNF]"
    Clicar no botão [Executar]
    Usuário deverá informar o <Validade> "${dados}[ValidadeFormularioNF]", <Observação> "${dados}[ObservacaoFormularioNF]"
    Clicar no botão [Salvar]

SMF-5254:Excluir Formulário de Nota Fiscal
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5254"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Formulário da Nota Fiscal"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código> "${dados}[CodigoFormularioNF]"
    Clicar no botão [Executar]
    Usuário deverá informar o <Validade> "${dados}[ValidadeFormularioNF]", <Observação> "${dados}[ObservacaoFormularioNF]"
    Clicar no botão [Apagar]
    Clicar na imagem de lixeira.