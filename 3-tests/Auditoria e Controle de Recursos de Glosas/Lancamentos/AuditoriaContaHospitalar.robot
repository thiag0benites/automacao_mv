#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Auditoria e Controle de Recursos de Glosas\Lancamentos\AuditoriaContaHopitalar.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource           ../../../1-resources/bd/BancoDados.robot
Resource           ../../../1-resources/AuditoriaContaHospitalarSteps.robot
# Resource           ../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            aud_control_lanc_conta_hospitalar
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-4500:Alterar Quantidade de Item para Maior, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4500"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para uma quantidade superior a atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar] 
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4504:Alterar Quantidade de Item para Menor, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4504"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para uma quantidade inferior e superior a zero 
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar] 
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4505:Excluir Item Lançado em Conta Hospitalar, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4505"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <Qtde. liber.> "${dados}[QtdeLiber]" para zero
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar] 
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4512:Alterar Valor de Item, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4512"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"
    Clicar no botão [Executar]
    Usuário deverá informar o <Valor liber.> "${dados}[ValorLiber]" para um valor diferente do atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4521:Alterar Percentual de Item, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4521"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Usuário deverá informar o <% Proc. liber.> ${dados}[ProcLiber]" para um valor diferente do atual 
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4524:Cancelar Auditoria Hospitalar para Conta
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4524"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Clicar no botão [Canc. Auditoria]
    Clicar no botão [Conta]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4525:Cancelar Auditoria Hospitalar para Item
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4525"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"  
    Clicar no botão [Executar]
    Clicar no botão [Canc. Auditoria]
    Clicar no botão [Item]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4526:Auditar Conta Hospitalar para Paciente Pagar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4526"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"  
    Clicar no botão [Executar]
    Usuário deverá marcar o campo <Paciente Paga>  
    Usuário deverá informar o <Valor liber.> "${dados}[ValorLiber]" para um valor diferente do atual
    Usuário deverá informar o <Motivo> "${dados}[Motivo]" 
    Clicar no botão [Salvar]
    Clicar no Aviso [OK]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4527:Fechar Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4527"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"  
    Clicar no botão [Executar]
    Clicar no botão [Relatório de Auditoria]
    Usuário deverá escolher a <saída do relatório> "${dados}[SaidaRelatorio]" 
    Clicar no botão [Imprimir]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4528:Inserir Item em Conta Hospitalar, Vinculado a Prestador, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4528"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"   
    Clicar no botão [Executar]
    Clicar no botão [Incluir item]
    Clicar no botão [Adicionar]
    Usuário deverá preencher os campos <Grupo>"${dados}[Grupo]", <Procedimento>"${dados}[Procedimento]", <Qtde.>"${dados}[Qtde]"
    Usuário deverá preencher os campos <Motivo Aud.>"${dados}[MotivoAud]", <Setor>"${dados}[Setor]", <Setor Exec.>"${dados}[SetorExec]", <Prestador>"${dados}[Prestador]"
    Clicar no botão [Salvar]
    Usuário deverá clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4530:Inserir Item em Conta Hospitalar, Vinculado a Equipe Cirúrgica, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4530"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar a <Conta> "${dados}[Conta]"  
    Clicar no botão [Executar]
    Clicar no botão [Incluir item]
    Clicar no botão [Adicionar]
    Usuário deverá preencher os campos <Grupo>"${dados}[Grupo]", <Procedimento>"${dados}[Procedimento]", <Qtde.>"${dados}[Qtde]"
    Usuário deverá preencher os campos <Motivo Aud.>"${dados}[MotivoAud]", <Setor>"${dados}[Setor]", <Setor Exec.>"${dados}[SetorExec]", <Prestador>"${dados}[Prestador]"
    Clicar no botão [Salvar]
    Usuário deverá clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4531:Inserir Item em Conta Hospitalar, sem Vínculo com Prestador, por meio da Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4531"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar o <Atendimento> "${dados}[NumAtendimento]" 
    Clicar no botão [Executar]
    Clicar no botão [Incluir item]
    Clicar no botão [Adicionar]
    Usuário deverá preencher os campos <Grupo>"${dados}[Grupo]", <Procedimento>"${dados}[Procedimento]", <Qtde.>"${dados}[Qtde]"
    Usuário deverá preencher os campos <Motivo Aud.>"${dados}[MotivoAud]", <Setor>"${dados}[Setor]", <Setor Exec.>"${dados}[SetorExec]", <Prestador>"${dados}[Prestador]"
    Clicar no botão [Salvar]
    Usuário deverá clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4532:Reabrir Auditoria Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4532"
    Acessar a tela "Faturamento>Auditoria e Controle de Recursos de Glosas>Lançamentos>Auditoria Conta Hospitalar"
    Usuário deverá informar o <Atendimento> "${dados}[Conta]" 
    Clicar no botão [Executar]
    Usuário deverá desmarcar o campo <Pronta>
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"