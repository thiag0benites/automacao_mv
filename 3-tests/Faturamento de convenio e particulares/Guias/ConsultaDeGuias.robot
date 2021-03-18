#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Manutenção de Guias (Std)
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/ConsultaDeGuiasSteps.robot
# Resource            ../../../1-resources/ProcedimentosSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_guias_consulta_guias
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-50:Pesquisar Guias
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-50"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Central de Autorizações"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtendimento]"
    Clicar no botão Executar

SMF-3908:Consultar Guia com Alteração de Agendamento por Lançamento Manual
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3908"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Central de Autorizações"    
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtendimento]"
    Clicar no botão Executar
    Clicar no Elemento da primeira tabela
    Validar se contém os Procedimentos de Lançamento na segunda tabela
    
SMF-3910:Verificar o Código do Paciente na Guia de Internação
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3910"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Guias>Central de Autorizações"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtendimento]"
    Clicar no botão Executar
    Clicar no Elemento da primeira tabela
    Validar o código do Paciente