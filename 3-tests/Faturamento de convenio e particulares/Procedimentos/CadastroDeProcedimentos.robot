#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Cadastro de Procedimentos
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Procedimentos\CadastroDeProcedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Procedimentos\CadastroDeProcedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/CadastroDeProcedimentosSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_proced_cadastro_proced
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-5040:Cadastrar Procedimento de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5040"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Preencher campos Código "${dados}[codProced]", Descrição "${dados}[descricaoProced]", Unidade "${dados}[unidadeProced]", Grupo "${dados}[grupoProced]" e Sexo"${dados}[sexoProced]"
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5064:Realizar consulta de Procedimento de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5064"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Clicar no botão Pesquisar
    Preencher campos da tela para realizar a consulta "${dados}[codProced]"
    Clicar no botão executar@print

SMF-5066:Cadastrar Procedimento de Convênio já existente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5066"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Preencher campos Código "${dados}[codProced]", Descrição "${dados}[descricaoProced]", Unidade "${dados}[unidadeProced]", Grupo "${dados}[grupoProced]" e Sexo"${dados}[sexoProced]"
    Clicar no botão Salvar@print

SMF-5070:Cadastrar Procedimento de Convênio com porte Anestesico
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5070"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Realizar o preenchimento dos campos Código "${dados}[codProced]", Descrição "${dados}[descricaoProced]", Unidade "${dados}[unidadeProced]", Grupo "${dados}[grupoProced]", Sexo "${dados}[sexoProced]", Porte "${dados}[porteProced]" e Auxiliares "${dados}[auxiliaresProced]"
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5086:Cadastrar Procedimento de Convênio quando for procedimento Materiais
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5086"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Realizar o preenchimento dos campos Código "${dados}[codProced]", Descrição "${dados}[descricaoProced]", Unidade "${dados}[unidadeProced]", Grupo "${dados}[grupoProced]", Sexo "${dados}[sexoProced]", checkbox MD
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5103:Cadastrar Procedimento de Convênio quando for procedimento Medicamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5103"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Realizar o preenchimento dos campos Código "${dados}[codProced]", Descrição "${dados}[descricaoProced]", Unidade "${dados}[unidadeProced]", Grupo "${dados}[grupoProced]", Sexo "${dados}[sexoProced]", checkbox MD
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5042:Excluir Procedimento de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5042"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Gerais>Procedimentos"
    Clicar no botão Pesquisar
    Preencher campos para consulta e exclusão "${dados}[codProced]"
    Clicar no botão executar
    Clicar no botão excluir@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"