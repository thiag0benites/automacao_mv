#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Guias\GuiasDoAtendimento.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Guias\GuiasDoAtendimento.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/GuiasDoAtendimentoSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_import_dados_simpro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-7740:Consultar Guia por Número de Atendimento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7740"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]

SMF-7742:Realizar uma Pré-Autorização Local de uma Guia
   	${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7742"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]
    Selecione uma Guia com status de "Solicitada" 
    Clicar no botão [Pré Autorização Local]
    Clicar no botão [Autorizar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-7743:Cancelamento de Solicitação TISS
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7743"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]
    Selecione uma Guia com status de "Solicitada"
    Clicar no botão [Cancelamento de Solicitação TISS]
    Clicar no Aviso [Sim]
    Usuário deverá informar a descrição pelo cancelamento da solicitação "${dados}[descricaoCancelamento]"
    Clicar no botão [Confirmar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-7759:Criar uma Nova Guia
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Nova Guia]
    Usuário deverá preencher os campos <NumAtendimento>"${dados}[numAtendimento]", <Tipo>"${dados}[numTipo]" <Procedimento>"${dados}[procedimento]"
    Salvar Nova Guia
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-7760:Solicitar Guia
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Solicitar]
    Clicar no botão [Solicitar Manutenção de Guias]
    Usuário deverá selecionar a "Saída do Relatório" "${dados}[saidaRelatorio]"
    Clicar no botão [Imprimir]

SMF-7761:Imprimir Relatório de Orçamento OPME
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Guias do Atendimento"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá selecionar uma Guia de Tipo "OPME" 
    Clicar no botão [Confirmar] da Tela de Manutenção de Guias 
    Usuário deverá selecionar a "Saída do Relatório" "${dados}[saidaRelatorio]" 
    Clicar no botão [Imprimir]