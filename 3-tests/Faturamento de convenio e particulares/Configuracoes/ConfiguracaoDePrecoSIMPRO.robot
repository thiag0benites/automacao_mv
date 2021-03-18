#################################################################################################################################################################
# Autor: Denner Ricardo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\ConfiguracaoDePrecoSIMPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\ConfiguracaoDePrecoSIMPRO.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\ConfiguracaoDePrecoSIMPRO.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Configuracoes\ConfiguracaoDePrecoSIMPRO.robot"
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
${suite}            fat_config_preco_simpro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-5236:Consultar tabela não existente na configuração de Preços SIMPRO
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5236"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Preços do SIMPRO"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar no campo <Tabela> "${dados}[TabelaSIMPRO]" um codigo de tabela que não existe
    Clicar no botão [Executar]

SMF-5234:Configurar de Preços SIMPRO
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5234"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Configurações>Preços do SIMPRO"
    Usuário deverá selecionar o nome da <Tabela> "${dados}[TabelaSIMPRO]" 
    Clicar no Aviso [OK]
    Usuário deverá selecionar no campo <Procedimento> "${dados}[ProcedimentosSIMPRO]" o codigo do procedimento da tabela SIMPRO
    Usuário deverá inserir no campo <Medicamento> "${dados}[MedicamentosSIMPRO]" o código do Medicamento SIMPRO
    Usuário deverá selecionar no campo <Tipo do Valor>"${dados}[ValorSIMPRO]" o tipo que será cobrado o valor do procedimento
    Clicar no botão [Salvar] 
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"
