#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Cadastro de Procedimentos
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Relatorios\Fatura\Individual\FaturaIndividualPorData.robot
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Relatorios\Fatura\Individual\FaturaIndividualPorData.robot
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../../1-resources/FaturaIndividualPorDataSteps.robot
# Resource            ../../../../../1-resources/dados/DadosTeste.robot
Resource            ../../../../../1-resources/ContextoSteps.robot 
Resource            ../../../../../1-resources/CriacaoDeRemessasSteps.robot
Resource            ../../../../../1-resources/FaturaRemessasSteps.robot


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_rel_individual_data
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
# SMF-55:Imprimir Fatura Guias TISS
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data"
#     Preencher campo Período com data inicial e data final
#     Clicar no botão Imprimir Fatura Guias TISS
#     Definir a Guia que será Impressa com o checkbox - SMF55
#     Clicar no botão 1 - Imprimir
#     Capturar fatura impressa

# SMF-5925:Imprimir Fatura Individual por Data informando o periodo
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Realizar o preenchimento do campo Período com data inicial e data final - SMF5925
#     Realizar o clique no botão Imprimir Fatura Guias TISS
#     Informar a Guia que será Impressa marcando checkbox - SMF5925
#     Clicar no botão 1 - Imprimir
#     Capturar fatura impressa

# SMF-5942:Imprimir relatórios de fechamento de contas por Convênio
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Fazer o preenchimento do campo Período com data inicial e data final e convênio - SMF5942
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

# SMF-5944:Consultar por convênio e Data de Alta que não possui faturas para serem emitidas
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Fazer o preenchimento do campo Período com data inicial e data final e convênio - SMF5942    
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

# SMF-5950:Imprimir Fatura Individual por Data informando o pelo número da Conta
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     O usuário deverá clicar na aba Contas
#     Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Conta> "${numConvTable}"
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

# SMF-5953:Imprimir Fatura Individual por Data informando o pela Origem do Atendimento
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     O usuário deverá clicar na aba Origem
#     Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Origem> "${campoOrigem}"
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

# SMF-5954:Imprimir Fatura Individual por Data informando o numero do Atendimento
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     O usuário deverá clicar na aba Atendimento
#     Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Atendimento> "${numAtend}"
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

# SMF-6021:Imprimir Fatura Individual por Data informando o Tipo de conta
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Informar Período com Data Inicial e Data final
#     Informar o tipo da conta
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa

SMF-6025:Imprimir relatórios de faturamento com exceção dos convênios selecionados
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
    Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convênio> "${campoConvenio}"
    Clicar no botão Imprimir Fatura
    Capturar fatura impressa   

# SMF-6034:Reimprimir Fatura Individual por Data informando o periodo
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Preencher campo Período
#     Marcar checkbox fechadas
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa 

# SMF-6035:Fechar contas sem imprimir Faturas
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Relatórios>Fatura>Individual por Data" 
#     Escrever no campo Período - SMF-6035
#     Marcar o checkbox Fechar contas sem Imprimir Faturas
#     Clicar no botão Imprimir Fatura
#     Capturar fatura impressa 