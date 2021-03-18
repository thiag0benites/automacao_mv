#################################################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Tabelas de Faturamento 
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convênio e particulares\Tabelas\Valores de Procedimentos\Procedimentos.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../1-resources/TabelasDeFaturamentoSteps.robot
# Resource            ../../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_tab_valproced_tab_fat
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-4679:Cadastrar Valor para Procedimento em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4679"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]" 
    Clicar no botão [Executar]
    Clicar no botão [Procedimentos]
    Clicar no botão [Adicionar]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Procedimento> "${dados}[Procedimento]"
    Usuário deverá informar a campo <Val. Honorário>"${dados}[ValHonorario]", <Val. Operac.>"${dados}[ValOperacao]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4680:Cadastrar Tabela de Faturamento dos tipos CH e Real
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4680"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Usuário deverá informar a <Descrição da tabela> "${dados}[DescricaoDaTabela]"
    Selecionar no campo <Tipo> "${dados}[TipoReal]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    
SMF-4681:Cadastrar Tabela de Faturamento do tipo CBHPM
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4681"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Usuário deverá informar a <Descrição da tabela> "${dados}[DescricaoDaTabela]"
    Selecionar no campo <Tipo> "${dados}[TipoCbhpm]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4682:Cadastrar Valor para Porte de Ato Médico em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4682"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"
    Clicar no botão [Executar]
    Clicar no botão [Portes de Ato Medico]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Porte do Ato Medico> "${dados}[PorteDoAtoMed]"
    Usuário deverá informar o campo <Valor do Porte Medico> "${dados}[ValorDoPorteMed]"
    Clicar no botão [Salvar]
    Clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4683:Cadastrar Valor para para Porte Anestésico em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4683"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"
    Clicar no botão [Executar]
    Clicar no botão [Portes Anestesicos]
    Clicar no botão [Adicionar]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Porte> "${dados}[Porte]"
    Usuário deverá informar o campo <Valor do Porte> "${dados}[ValorDoPorte]"
    Clicar no botão [Salvar]
    Clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    
SMF-4684:Cadastrar percentual de valorização para Grupos de Procedimentos em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4684"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"
    Clicar no botão [Executar]
    Clicar no botão [Grupo Procedimentos]
    Usuário deverá informar o grupo de procedimento desejado no campo <Código> "${dados}[Codigo]"
    Usuário deverá informar o campo <Percentual> "${dados}[Percentual]"
    Clicar no botão [Salvar]
    Clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4700:Alterar o valor de um código da Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4700"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"  
    Clicar no botão [Executar]
    Selecionar no campo <Tipo> "${dados}[TipoCbhpm]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4702:Excluir um registro na Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4702"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"  
    Clicar no botão [Executar]
    Clicar no botão [Apagar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4703:Cadastrar Valor zerado para Procedimento em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4703"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]" 
    Clicar no botão [Executar]
    Clicar no botão [Procedimentos]
    Clicar no botão [Adicionar]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Procedimento> "${dados}[Procedimento]"
    Usuário deverá informar a campo <Val. Honorário>"${dados}[ValHonorario]", <Val. Operac.>"${dados}[ValOperacao]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4705:Cadastrar valor zerado para Portes Anestésicos em Tabela de Faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4705"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"
    Clicar no botão [Executar]
    Clicar no botão [Portes Anestesicos]
    Clicar no botão [Adicionar]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Porte> "${dados}[Porte]"
    Usuário deverá informar o campo <Valor do Porte> "${dados}[ValorDoPorte]"
    Clicar no botão [Salvar]
    Clicar no botão [Sair]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4708:Cadastrar valor zerado para Portes de Ato Médico em Tabela de Faturamento
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Cobranças e Tabelas>Tabelas de Faturamento"
    Clicar no botão [PESQUISAR]
    Usuário deverá informar o <Código da Tabela de Faturamento> "${dados}[CodTabelasDeFaturamento]"
    Clicar no botão [Executar]
    Clicar no botão [Portes de Ato Medico]
    Clicar no botão [Adicionar]
    Usuário deverá informar a <Data de Vigência> "${dados}[DataVigencia]" 
    Usuário deverá informar o campo <Porte do Ato Medico> "${dados}[PorteDoAtoMed]"
    Usuário deverá informar o campo <Valor do Porte Medico> "${dados}[ValorDoPorteMed]"
    Clicar no botão [Salvar]
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"