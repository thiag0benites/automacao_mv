#################################################################################################################################################################
# Autor: Denner Ricardo
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Solicitacoes\NotaFiscalDoConvenio.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/NotaFiscalDoConvenioSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot
### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_solicit_nota_fiscal_conv
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDD
SMF-4764:Gerar Nota Fiscal de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4764"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"
    Usuário deverá informar o <Convênio> "${dados}[Convenio]"
    Usuário deverá informar o <Remessa> "${dados}[Remessa]" 
    Clicar no botão [Concluir]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4765:Imprimir Nota Fiscal de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4765"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"
    Usuário deverá informar o <Remessa> "${dados}[Remessa]" 
    O sistema preencherá automaticamente a descrição do convênio;
    Clicar no botão [Imprimir]
    Selecionar o tipo de saída do relatório para tela, no campo <Saída do Relatório>
    Clicar no botão [Imprimir]

SMF-4767:Gerar Nota Fiscal de Convênio com desconto
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4765"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"
    Usuário deverá informar o <Convênio> "${dados}[Convenio]"
    Usuário deverá informar o <Remessa> "${dados}[Remessa]" 
    Usuário deverá informar o <Desconto>  
    Usuário deverá informar o <Valor> "${dados}[Valor]" do Desconto
    Clicar no botão [Concluir]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4768:Gerar Nota Fiscal de Convênio com Acréscimo
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4768"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"
    Usuário deverá informar o <Convênio> "${dados}[Convenio]"
    Usuário deverá informar o <Remessa> "${dados}[Remessa]" 
    Usuário deverá informar o <Acréscimo> 
    Usuário deverá informar o <Valor> "${dados}[Valor]" do Acréscimo
    Clicar no botão [Concluir]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-48:Pesquisar Nota Fiscal de Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-48"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Solicitações>Nota Fiscal do Convênio"
    Usuário deverá informar o <Convênio> "${dados}[Convenio]"
    Usuário deverá informar o <Remessa> "${dados}[Remessa]" 
    Clicar na aba 'Resumo'
    Clicar no botão [Executar]
    Usuário deverá clicar no botão [Seguinte];
    Usuário deverá clicar no botão [Imprimir NF];
    Usuário deverá clicar no botão [Sim] da mensagem;
    Usuário deverá escolher a saída do relatório 
    clicar no botão [Imprimir]  