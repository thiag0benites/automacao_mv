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
Resource            ../../../1-resources/FaturaRemessasSteps.robot
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
${suite}            fat_conv_part_faturas_remessas
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-59:Cadastrar Faturas e Remessas
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-59"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${dados}[numConvenio]", <Competência> "${dados}[numCompetencia]" 
    Clicar no Botão Pesquisa@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-279:Imprimir o relatório de Faturas e Remessas
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-279"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Pesquisar Faturas e Remessas, inserir informações no campo: <Convênio> "${dados}[numConvenio]"
    Clicar no Botão Pesquisa
    Clicar no botão atend. da remessa
    Clicar no botão Imprimir
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-968:Criar Faturas para Convênios
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-968"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Clicar no Botão Pesquisa
    Selecionar elemento da tabela "${dados}[descricao]"
    Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${dados}[descricao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-970:Criação de remessas de convênios com data prevista para pagamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-970"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Clicar no Botão Pesquisa
    Selecionar elemento da tabela "${dados}[descricao]"
    Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${dados}[descricao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-973:Criação de remessas de convênios com agrupamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-973"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Clicar no Botão Pesquisa
    Selecionar elemento da tabela "${dados}[descricao]"
    Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${dados}[descricao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-975:Criar Remessa sem Agrupamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-975"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Faturas e Remessas"
    Realizar a pesquisa
    Clicar no Botão Pesquisa
    Selecionar elemento da tabela "${dados}[descricao]"
    Pesquisar Faturas e Remessas, inserir informações no campo: <Descrição da Fatura> "${dados}[descricao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"