#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Guias\CentralDeAutorizacoes.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Guias\CentralDeAutorizacoes.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/CentralDeAutorizacoesSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_guias_central_autorizacoes
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-2388:Validar a Senha de Autorização da Guia na Central de Autorizações
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2388"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Autorizações"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]" 
    Clicar no botão [Executar]

SMF-3522:Consultar Guias pelo Código de Pré-Internação
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3522"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Autorizações"
    Usuário deverá informar o <Pré-Int.> "${dados}[numAtendimento]"  
    Clicar no botão [Executar]

SMF-3785:Excluir o Motivo de Pendência Informado na Central de Autorizações de Guias com Sucesso
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3785"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Autorizações"
    Usuário deverá informar o <Atendimento> "${dados}[numAtendimento]"
    Clicar no botão [Executar]
    Clicar duas vezes na linha da coluna <Atendimento> 
    Clicar no Aviso [OK]
    Abrir a aba [Mais Detalhes] 
    Excluir a informação do campo <Motivo Pendência> 
    Salvar [Mais Detalhes]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"