#################################################################################################################################################################
# Autor: Letícia Andrade
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/CriacaoDeRemessasSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot
Resource            ../../../1-resources/ContextoSteps.robot 

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_remessas_criacao_remessas
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-56:Criar Remessas Ambulatoriais
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-56"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher os campos convenio "${dados}[numConvenio]", plano "${dados}[numPlano]", origem "${dados}[origem]", data inicial "${dados}[dataInicial]" e data final "${dados}[dataFinal]"
    Clicar no Botão Pesquisar
    Clicar na aba Ambulatório
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-961:Criação de remessas de convênios para tipo de atendimento "Ambos"   
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-961"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher os campos convenio "${dados}[numConvenio]", plano "${dados}[numPlano]", origem "${dados}[origem]", data inicial "${dados}[dataInicial]" e data final "${dados}[dataFinal]"
    Clicar no Botão Pesquisar
    Clicar na aba Ambulatório
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-2963:Criar Remessa
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2963"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher os campos convenio "${dados}[numConvenio]", plano "${dados}[numPlano]", origem "${dados}[origem]", data inicial "${dados}[dataInicial]" e data final "${dados}[dataFinal]"
    Clicar no Botão Pesquisar
    Clicar na aba Ambulatório
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-964:Criação de remessas de convênios para tipo de atendimento "Ambulatorial"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-964"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher campos "${dados}[numConvenio]", plano "${dados}[numPlano]", origem "${dados}[origem]", data inicial "${dados}[dataInicial]", data final "${dados}[dataFinal]" e selecionar o Tipo de Atendimento Ambulatorial "${dados}[valorCampoAtendCombobox]"
    Clicar no Botão Pesquisar
    Clicar na aba Ambulatório
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-965:Criação de remessas de convênios para tipo de atendimento "Hospitalar"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-965"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher campos "${dados}[numConvenio]", plano "${dados}[numPlano]", origem "${dados}[origem]", data inicial "${dados}[dataInicial]", data final "${dados}[dataFinal]" e selecionar o Tipo de Atendimento Hospitalar "${dados}[valorCampoAtendCombobox]"
    Clicar no Botão Pesquisar
    Clicar na aba Ambulatório
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-967:Criação de remessas de convênios com seleção de plano(s)
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-967"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Realizar o preenchimento do campo convenio "${dados}[numConvenio]"
    Clicar no Botão Pesquisar
    Clicar na aba plano
    Fazer o preenchimento dos campos da aba Plano "${dados}[numPlano]"
    Clicar no botão Criação de Remessa
    Preencher Competência "${dados}[dataCompetenciaPlano]" em Plano "${dados}[dataInicioPlano]", "${dados}[dataFinalPlano]"
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-971:Criação de remessas de convênios com seleção de origem(ns)
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-971"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher o campo Convênio "${dados}[numConvenio]"
    Clicar no Botão Pesquisar
    Clicar na aba Origem
    Preencher Campo Selecionar na aba Origem "${dados}[origem]"
    Clicar no botão Criação de Remessa
    Preencher Competência Origem "${dados}[dataCompetenciaOrigem]", "${dados}[dataInicial]", "${dados}[dataFinal]"
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-974:Criação de remessas de convênios com limitação de quantidade de contas
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-974"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Criação de Remessa"
    Preencher campos "${dados}[numConvenio]", "${dados}[qtdeContas]", "${dados}[dataInicial]", "${dados}[dataFinal]", "${dados}[origem]" e "${dados}[valorCampoAtendCombobox]"
    Clicar no Botão Pesquisar
    Clicar no botão Criação de Remessa
    Clicar no botão Confirmar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"