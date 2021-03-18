#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Monitoração e Faturamento TISS
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Lançamentos\MonitoracaoFaturamentoTISS.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Lançamentos\MonitoracaoFaturamentoTISS.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/MonitoracaoFaturamentoStepsTISS.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot
Resource            ../../../1-resources/FaturaIndividualPorDataSteps.robot
Resource            ../../../1-resources/ContextoSteps.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_lanc_monitiracao_fat
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-52:Pesquisar Monitoração de Faturamento - TISS
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Monitoração de Faturamento - TISS"
    Preencher o campo Convênio
    Clicar no botão Executar
    Selecionar lote que não teve remessa gerada 
    Clicar no botão Faturamento 
    Selecionar o campo protocolo
    Clicar o campo protocolo
    Preencher o campo Número do protocolo
    Clicar o botão OK 

SMF-284:Imprimir o Relatório de Monitoração de Faturamento
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Monitoração de Faturamento - TISS"
    Clicar no botão Rel. rec. Glosas
    Realizar o clique no botão Capa de lote