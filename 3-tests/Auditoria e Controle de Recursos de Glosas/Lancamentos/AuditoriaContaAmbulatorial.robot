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
Resource           ../../../1-resources/AuditoriaContaAmbulatorialSteps.robot
# Resource           ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            aud_control_lanc_conta_ambulatorial
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-4460:Alterar Quantidade de Item para Maior, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4460"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para uma quantidade superior a atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4467:Alterar Quantidade de Item para Menor, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4467"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para uma quantidade inferior e superior a zero 
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar] 
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4470:Excluir Item Lançado em Conta Ambulatorial, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4470"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para zero
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4471:Alterar Valor de Item, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4471"	
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Valor liber.> "${dados}[QtdeLiber]" para um valor diferente do atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4472:Alterar Percentual de Item, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4472"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <% Proc. liber.> "${dados}[ProcLiber]" para um valor diferente do atual 
    # Não clica 
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4477:Cancelar Auditoria Ambulatorial para Conta
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4477"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Canc. Auditoria]
    Clicar no botão [Conta]

SMF-4478:Cancelar Auditoria Ambulatorial para Item
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4478"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Canc. Auditoria]
    Clicar no botão [Item]

SMF-4479:Auditar Conta Ambulatorial para Paciente Pagar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4479"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Usuário deverá marcar o campo <Paciente Paga>  
    Usuário deverá informar o <Valor liber.> "${dados}[ProcLiber]" para um valor diferente do atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]

SMF-4480:Fechar Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4480"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Relatório de Auditoria]
    Usuário deverá escolher a <saída do relatório> "${dados}[SaidaRelatorio]" 
    Clicar no botão [Imprimir]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4493:Inserir Item em Conta Ambulatorial, Vinculado a Prestador, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4493"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Incluir item]
    Clicar no botão [Adicionar]
    Usuário deverá preencher os campos <Grupo>"${dados}[Grupo]", <Procedimento>"${dados}[Procedimento]", <Qtde.>"${dados}[Qtde]"
    Usuário deverá preencher os campos <Motivo Aud.>"${dados}[MotivoAud]", <Setor>"${dados}[Setor]", <Setor Exec.>"${dados}[SetorExec]", <Prestador>"${dados}[Prestador]"
    Clicar no botão [Salvar]
    Usuário deverá clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4495:Inserir Item em Conta Ambulatorial, sem Vínculo com Prestador, por meio da Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4495"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Incluir item]
    Clicar no botão [Adicionar]
    Usuário deverá preencher os campos <Grupo>"${dados}[Grupo]", <Procedimento>"${dados}[Procedimento]", <Qtde.>"${dados}[Qtde]"
    Usuário deverá preencher os campos <Motivo Aud.>"${dados}[MotivoAud]", <Setor>"${dados}[Setor]", <Setor Exec.>"${dados}[SetorExec]", <Prestador>"${dados}[Prestador]"
    Clicar no botão [Salvar]
    Usuário deverá clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4496:Reabrir Auditoria Ambulatorial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4496"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Ambulatorial"
    Usuário deverá informar o <Atendimento> "${1000002014}" 
    Clicar no botão [Executar]
    Usuário deverá desmarcar o campo <Pronta>
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"