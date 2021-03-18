#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource           ../../../1-resources/bd/BancoDados.robot
Resource           ../../../1-resources/EntregaDeRemessasSteps.robot
# Resource           ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_lanc_entrega_remessas
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-982:Entregar Remessas com Data Prevista para Pagamento Configurada no Convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-982"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Entrega de Remessas"
    Usuário deverá informar o <código da remessa> "${dados}[CodRemessa]"
    Usuário deverá informar a <Data do Entrega> "${dados}[DataEntrega]"
    Usuário deverá informar a <Data do Envio> "${dados}[DataEnvio]"
    Usuário deverá informar a <Data Prevista para Pagamento> "${dados}[DataPrevista]"
    Usuário deverá informar a <Nr Capa de Lote> "${dados}[CapaLote]"
    Clicar no botão [Fechamento/ Entrega da Remessa]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-986:Cancelar a Operação de Entrega da Remessa
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-986"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Entrega de Remessas"
    Usuário deverá informar o <código da remessa> "${dados}[CodRemessa]"
    Clicar no botão <Cancelar Operação>
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3944:Validar Configuração se Valor "S" de Inibição de Colunas na Impressão do Relatório RPS
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3944"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Entrega de Remessas"
    Usuário deverá informar o <código da remessa> "${dados}[CodRemessa]"
    Usuário deverá informar a <Data do Entrega> "${dados}[DataEntrega]"
    Usuário deverá informar a <Data do Envio> "${dados}[DataEnvio]"
    Usuário deverá informar a <Data Prevista para Pagamento> "${dados}[DataPrevista]"
    Usuário deverá informar a <Nr Capa de Lote> "${dados}[CapaLote]"
    Clicar no botão [Fechamento/ Entrega da Remessa]
    Clicar no Aviso [OK]
    Clicar no botão [Imprimir]

SMF-983:Informar Nova Remessa para Entrega
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-983"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Entrega de Remessas"
    Usuário deverá informar o <código da remessa> "${dados}[CodRemessa]"
    Usuário deverá informar a <Data do Entrega> "${dados}[DataEntrega]"
    Usuário deverá informar a <Data do Envio> "${dados}[DataEnvio]"
    Usuário deverá informar a <Data Prevista para Pagamento> "${dados}[DataPrevista]"
    Usuário deverá informar a <Nr Capa de Lote> "${dados}[CapaLote]"
    Clicar no botão [Fechamento/ Entrega da Remessa]
    Clicar no Aviso [OK]
    Clicar no botão [Sair]
    Clicar no botão [Informar nova Remessa]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    
SMF-988:Entregar Remessas sem Data Prevista para Pagamento Configurada
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-988"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Entrega de Remessas"
    Usuário deverá informar o <código da remessa> "${dados}[CodRemessa]"
    Clicar no <Data de Fechamento>
    Clicar no botão [Fechamento/ Entrega da Remessa]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"