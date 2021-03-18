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
Resource            ../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../1-resources/ImpressaoFaturaSteps.robot
# Resource            ../../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_tab_valproced_Impressao_fat
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-4739:Criar configuração de impressão das faturas para Grupos de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4739"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Formas de Apresentação>Impressão da Fatura"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código de Apresentação> "${dados}[CodApresentacao]" 
    Clicar no botão [Executar]
    Usuário deverá selecionar o tipo de <Quebra da Fatura> "${dados}[QuebraDaFatura]"  
    Selecionar a aba 'Faturamento'
    Usuário deverá selecionar no campo <Kit Separado>"${dados}[KitSeparado]", <Resumo Kit>"${dados}[ResumoKit]", <Exibir logo>"${dados}[ExibirLogo]"
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHora]" desejado para impressão da fatura
    Marcar os checkbox que deseja selecionar para impressão da fatura
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4742:Criar configuração de impressão das faturas para Grupos de Procedimentos
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4742"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Formas de Apresentação>Impressão da Fatura"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código de Apresentação> "${dados}[CodApresentacao]" 
    Clicar no botão [Executar]
    Usuário deverá selecionar o tipo de <Quebra da Fatura> "${dados}[QuebraDaFatura]"  
    Selecionar a aba 'Grupo Procedimento'
    Usuário deverá selecionar no campo <Kit Separado>"${dados}[KitSeparado]", <Resumo Kit>"${dados}[ResumoKit]", <Exibir logo>"${dados}[ExibirLogo]"
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHora]" desejado para impressão da fatura do Grupo Procedimento
    Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura do Grupo Procedimento
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4746:Criar configuração de impressão das faturas para os Grupos de Procedimento e Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4746"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Formas de Apresentação>Impressão da Fatura"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código de Apresentação> "${dados}[CodApresentacao]" 
    Clicar no botão [Executar]
    Usuário deverá selecionar o tipo de <Quebra da Fatura> "${dados}[QuebraDaFatura]"  
    #Grupo Procedimento
    Selecionar a aba 'Grupo Procedimento'
    Usuário deverá selecionar no campo <Kit Separado>"${dados}[KitSeparado]", <Resumo Kit>"${dados}[ResumoKit]", <Exibir logo>"${dados}[ExibirLogo]"
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHoraProcedimento]" desejado para impressão da fatura do Grupo Procedimento
    Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura do Grupo Procedimento
    #Grupo Faturamento
    Selecionar a aba 'Faturamento'
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHora]" desejado para impressão da fatura
    Marcar os checkbox que deseja selecionar para impressão da fatura
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4747:Criar configuração de impressão das faturas com mais de um código de procedimento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4747"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Formas de Apresentação>Impressão da Fatura"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código de Apresentação> "${dados}[CodApresentacao]" 
    Clicar no botão [Executar]
    Usuário deverá selecionar o tipo de <Quebra da Fatura> "${dados}[QuebraDaFatura]"  
    # Grupo Procedimento 1
    Selecionar a aba 'Grupo Procedimento'
    Usuário deverá selecionar no campo <Kit Separado>"${dados}[KitSeparado]", <Resumo Kit>"${dados}[ResumoKit]", <Exibir logo>"${dados}[ExibirLogo]"
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHoraProcedimento]" desejado para impressão da fatura do Grupo Procedimento
    Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura do Grupo Procedimento
    # Grupo Procedimento 2
    Selecionar no campo <Imprime Data/Hora>"${dados}[DataHoraProcedimento]" desejado para impressão da fatura do Grupo Procedimento 2
    Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento 2
    Selecionar no campo <Imprime Acrescimo>"${dados}[ImprimeAcrescimo]" o valor que desejado para a impressão da fatura do Grupo Procedimento 2
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4750:Inserir código de procedimento já existente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4750"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Formas de Apresentação>Impressão da Fatura"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código de Apresentação> "${dados}[CodApresentacao]" 
    Clicar no botão [Executar]
    Selecionar Grid Grupo Procedimento
    Clicar no botão [Adicionar] 
    Usuário deverá informar o <Código de Apresentação> já existente"${dados}[CodApresentacao]"<Seq. Resumo Fatura> "${dados}[SqResumoFatura]" <Seq. Detalhe Fatura> "${dados}[SeqDetalheFatura]" 
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA" 