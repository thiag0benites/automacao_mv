#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Configurações do TISS por Convênio
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configurações\ConfiguracoesDoTISSPorConvenio.robot
# firefox: robot -v browser:firefox -d /5-results "3-tests\Faturamento de convenio e particulares\Configurações\ConfiguracoesDoTISSPorConvenio.robot
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/ConfiguracaoTISSPorConvenioSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_config_tiss_convenio
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-5413:Cadastrar o TISS por Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5413"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações do TISS por Convênio"
    Informar o convênio desejado "${dados}[numConvenio]"
    Clicar no botão Executar
    Primeira mensagem, clicar no botão 
    Selecionar na lista de valores do campo <Versão TISS>, a versão "${numVersao}"
    Clicar no botão OK
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5656:Validar Serviços do Detalhamento do TISS Versão 3.0 ou superior
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5656"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações do TISS por Convênio"
    Clicar no botão Adicionar 
    Preencher o campo Convênio "${dados}[numConvenio]"
    Clicar no botão Salvar 
    Informar versão TISS "${dados}[numVersao]"
    Clicar no botão Detalhamento
    Informar Serviço "${dados}[valorServico]" e Elemento do Serviço " ${valor}[ElemServico]"

SMF-2075:Configurar Convênios para o TISS para Versões Anteriores à 3
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2075"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações do TISS por Convênio"
    Clicar no botão Adicionar 
    Preencher o campo Convênio "${dados}[numConvenio]"
    Clicar no botão Salvar 
    Informar versão TISS "${dados}[numVersao]"
    Clicar no botão Detalhamento
    Preencher limite de Guias por lote "${dados}[numGuiasLote]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-2784:Configurar Convênios para o TISS a Partir da Versão 3
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2784"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações do TISS por Convênio"
    Clicar no botão Adicionar 
    Preencher o campo Convênio "${dados}[numConvenio]"
    Clicar no botão Salvar 
    Informar versão TISS "${dados}[numVersao]"
    Clicar no botão Detalhamento
    Clicar no botão Sair
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5439:Configuração do código de validação com a opção "1 - Utilizar"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5439"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Configurações do TISS por Convênio"
    Informar o convênio desejado "${dados}[numConvenio]"
    Clicar no botão Executar
    Clicar no botão OK
    Clicar no botão Detalhamento
    Preencher Serviço com a opção "${valorServico}"
    Clicar no botão Pesquisar
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"