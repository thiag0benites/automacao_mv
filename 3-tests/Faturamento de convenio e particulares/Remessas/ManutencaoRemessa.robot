#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Pesquisar, Imprimir relatório e Imprimir NF do manutenção de remessa
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/ManutencaoRemessaSteps.robot
Resource            ../../../1-resources/ContextoSteps.robot 

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_remessas_manutencao_remessa
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-50:Pesquisar Manutenção de Remessa
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-50"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Manutenção de Remessa"
    Clicar no botão [PESQUISAR]
    Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convenio> "${dados}[ManutencaoRemessaConvenio]", <Competencia> "${dados}[ManutencaoRemessaCompetencia]"
    Clicar no botão [Executar]

SMF-283:Imprimir o relatório de Manutenção de Remessa
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-283"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Manutenção de Remessa"
    Clicar no botão [PESQUISAR]
    Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convenio> "${dados}[ManutencaoRemessaConvenio]", <Competencia> "${dados}[ManutencaoRemessaCompetencia]"
    Clicar no botão [Executar]
    Imprimir o relatório de Manutenção de Remessa

SMF-3943:Verificar Número de Endereço do Convênio na R_RPS_PADRAO
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3943"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Manutenção de Remessa"
    Clicar no botão [PESQUISAR]
    Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convenio> "${dados}[ManutencaoRemessaConvenio]", <Competencia> "${dados}[ManutencaoRemessaCompetencia]"
    Clicar no botão [Executar]
    Clicar no botão [Nota Fiscal]
    Selecionar a aba 'Resumo'
    Digitar Telefone "${dados}[ManutencaoRemessaTelefone]"
    Clicar no botão [Imprimir NF] 