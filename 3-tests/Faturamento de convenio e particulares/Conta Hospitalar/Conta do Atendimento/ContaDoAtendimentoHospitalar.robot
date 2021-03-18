#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Conta do Atendimento Hospitalar
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Controle Hospitalar\Conta do Atendimento\ContaDoAtendimentoHospitalar.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Controle Hospitalar\Conta do Atendimento\ContaDoAtendimentoHospitalar.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
# Resource            ../../../../1-resources/dados/DadosTeste.robot
Resource            ../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../1-resources/ContaDoAtendimentoHospitalarSteps.robot 
Resource            ../../../../1-resources/ContextoSteps.robot 


### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_conta_atendimento_hospitalar
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-68:Consultar Atendimento de Contas Hospitalares Aberta
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-68"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar uma conta aberta vinculada ao atendimento consultado

SMF-929:Lançar Procedimento Manualmente com Vínculo a Prestador
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-929"    
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços
    Clicar no botão Adicionar
    Inserir informações no campo: <Grupo> "${dados}[numGrupo]", <Proced> "${dados}[numProced]", <Qtde.> "${dados}[campoQtde]", <Setor> "${dados}[campoSetor]", <Setor E.> "${dados}[campoSetorE]", <Prest.> "${dados}[campoPrest]", <Ativ.> "${dados}[campoAtiv]"
    Inserir Equipe Médica
    Inserir informações no campo: <Código> "${dados}[campoCodigoMedico]", <Médico> "${dados}[nomeMedico]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-931:Lançar Procedimento Manualmente Sem Vínculo a Prestador
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-931" 
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços
    Clicar no botão Adicionar
    Inserir informações no campo: <Grupo> "${dados}[numGrupo]", <Proced> "${dados}[numProced]", <Qtde.> "${dados}[campoQtde]", <Setor> "${dados}[campoSetor]", <Setor E.> "${dados}[campoSetorE]", <Prest.> "${dados}[campoPrest]", <Ativ.> "${dados}[campoAtiv]"
    Clique no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-933:Lançar Procedimento Manualmente com Vínculo de Equipe Médica
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-933" 
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços
    Inserir informações no campo: <Grupo> "${dados}[numGrupo]", <Proced> "${dados}[numProced]", <Qtde.> "${dados}[campoQtde]", <Setor> "${dados}[campoSetor]", <Setor E.> "${dados}[campoSetorE]", <Prest.> "${dados}[campoPrest]", <Ativ.> "${dados}[campoAtiv]"
    Clicar no botão Equipe Médica
    O usuário deverá preencher os campos Código e Médico
    Clicar no botão Voltar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

# SMF-4310:Exibir-esconder descrição e valor de itens nos serviços da conta hospitalar
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
#     Informar código do atendimento "${dados}[codAtendimento]"
#     Clicar no botão executar
#     Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
#     Clicar no botão serviços
#     Selecionar o procedimento desejado
#     Clicar no botão visualizar

SMF-942:Fechar Automaticamente Conta Hospitalar de Convênio para Paciente Internado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-942"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Informar o período final da conta
    Clicar no botão OK
    Selecionar Saída do Relatório
    Clicar no botão Imprimir 
    O usuário deverá fechar o relatório
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-944:Fechar Manualmente Conta Hospitalar de Convênio para Paciente Internado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-944"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Informar o período final da conta
    Clicar no botão OK
    Selecionar Saída do Relatório
    Clicar no botão Imprimir 
    O usuário deverá fechar o relatório
    O usuário deve marcar o campo Fec?
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3575:Incluir Kit em Conta de Atendimento Hospitalar que Não Possui Kit Lançado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3575"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços
    Clicar no botão Kit
    Inserir informações no campo: <Cód.> "${dados}[numCodPrestador]", <Kit> "${dados}[numKit]", <Qtde.> "${dados}[campoQtde]", <Setor> "${dados}[campoSetor]"
    Clicar no botão na lateral da tabela
    Clicar no botão Opção Lançamento
    Clicar no botão Ok
    Clicar em Retornar
    Clicar no botão Kit
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-8268:Excluir kit da conta hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8268"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços
    Clicar no botão Kit
    Inserir informações no campo: <Cód.> "${dados}[numCodPrestador]", <Kit> "${dados}[numKit]", <Qtde.> "${dados}[campoQtde]", <Setor> "${dados}[campoSetor]"
    Clicar no botão na lateral da tabela
    Clicar no botão Opção Lançamento
    Clicar no botão Ok
    Clicar em Retornar
    Clicar no botão Kit
    Excluir Kit 
    Confirmar exclusão do Kit
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-958:Acessar a Tela de Guias por meio da Conta Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-958"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão Guias

SMF-69:Recalcular Conta Hospitalar Manualmente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-69"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão Recalcular Conta
    Clicar no botão Sim e confirmar
    ##Tirar dúvida com dannilo sobre esse botão da tela (Recalcular Conta)
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"


SMF-8291:Acessar os Serviços da Conta Selecionada
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-8291"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão serviços

SMF-4269:Valorizar OPME Manualmente em Conta Hospitalar sem Aplicação de Percentual de Consignação


SMF-4561:Cancelar Nota Fiscal de Particular para Conta Hospitalar
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4561"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Conta Hospitalar>Conta do Atendimento"@nprint
    Informar código do atendimento "${dados}[codAtendimento]"
    Clicar no botão executar
    Selecionar a conta desejada do atendimento hospitalar "${dados}[numeroContaAberta]"
    Clicar no botão Recebe Conta
    Imprime Nota Fiscal
    Cancelar Nota Fiscal
    Informar motivo do Cancelamento
    Clicar no botão OK
    Clicar no botão OK
    Clicar no botão Recebe Conta novamente
    Imprime Nota Fiscal novamente
    ##Usuário precisa ter permissão para Cancelar Nota Fiscal
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"