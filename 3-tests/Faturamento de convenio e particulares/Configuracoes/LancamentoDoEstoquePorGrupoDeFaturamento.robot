#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Configurações do TISS por Convênio
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\ConfiguracoesDoTISSPorConvenio.robot
# firefox: robot -v browser:firefox -d /5-results "3-tests\Faturamento de convenio e particulares\Configurações\ConfiguracoesDoTISSPorConvenio.robot
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/LancamentoDoEstoquePorGrupoFaturametoSteps.robot
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
${suite}            fat_config_lanc_estoq_grp_fat
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-5372:Cadastrar grupos de faturamento para Materiais
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5372"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Lançamento do Estoque por Grupo de Faturamento"
    Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${dados}[valorGrupoFat]", <Setor> "${dados}[valorSetor]", <Estoque> "${dados}[valorEstoque]", <Classe> "${dados}[valorClasse]"
    Clicar no botão Salvar@print@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5359:Cadastrar grupos de faturamento para os lançamentos automáticos
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5359"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Lançamento do Estoque por Grupo de Faturamento"
    Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${dados}[valorGrupoFat]", <Setor> "${dados}[valorSetor]", <Estoque> "${dados}[valorEstoque]", <Classe> "${dados}[valorClasse]"
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5370:Excluir um registro da tela de lançamento por grupos de faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5370"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Lançamento do Estoque por Grupo de Faturamento"
    Clicar no botão Pesquisar
    Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${dados}[valorGrupoFat]"- SMF5370
    Clicar no botão Executar
    Clicar no botão Apagar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5366:Alterar cadastro para os lançamentos de estoque por grupo de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5366"    
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Lançamento do Estoque por Grupo de Faturamento"
    Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${dados}[valorGrupoFat]", <Setor> "${dados}[valorSetor]", <Estoque> "${dados}[valorEstoque]", <Classe> "${dados}[valorClasse]"
    Clicar no botão Salvar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-5363:Consultar grupos de faturamento    
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5363"    
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Lançamento do Estoque por Grupo de Faturamento"
    Clicar no botão Pesquisar
    Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${dados}[valorGrupoFat]"
    Clicar no botão Executar@print
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"