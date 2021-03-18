#################################################################################################################################################################
# Autor: Thiago Benites
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results "3-tests\Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
### Pega massa de dados do Gerenciador
Resource            ../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../1-resources/ProcedimentosSteps.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_tab_valproced_procedimentos
# Recebe dados do gerenciador
${dados}

*** Test Case ***
### Escrita no estilo BDDrobot -v browser:chrome -t "SMF-3650:Verificar Valoração Automática na Tela 'Valores dos Procedimentos'" -d ./5-results/SMF-3650 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot
# "
# robot -v browser:firefox -t "SMF-3650:Verificar Valoração Automática na Tela 'Valores dos Procedimentos'" -d ./5-results/SMF-3650 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
###
# Pré-condições
# Ter acesso à tela 'Valores de los Procedimientos'.
# (Faturación > Convenios y Particulares > Valores de los Procedimientos > Procedimientos)(M_VAL_PROCED)

# Existir procedimentos cadastrados.
# (Faturación > Convenios y Particulares > Tablas > Generales > Procedimientos)
SMF-3650:Verificar Valoração Automática na Tela 'Valores dos Procedimentos'
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3650"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint
    Inserir informações nos seguintes campos: <Cód.Proced> "${dados}[CodProcedimento]", <Procedimento> "${dados}[Procedimento]", <Tabelas> "${dados}[CodTabela]", <Vigencia> "${dados}[Vigencia]", <Vl Honorário> "${dados}[VlHonorario]", <Vl Operacional> "${dados}[VlOperacional]"@nprint
    Clicar no botão "Salvar"@nprint
    Valida mensagem "Registros gravados com sucesso."@nprint
    Clicar no botão Apagar@nprint
    Clicar no botão "Procurar"@nprint
    Inserir o código do procedimento utilizado no campo "${dados}[CodProcedimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Verificar se o cadastro realizado foi salvo com sucesso@print

# robot -v browser:chrome -t "SMF-5155:Cadastrar valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5155 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# robot -v browser:firefox -t "SMF-5155:Cadastrar valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5155 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
###
# Pré-condições
# 1- Usuário logado deve ter acesso a tela  'M_VAL_PROCED' do FFCV vinculada ao seu papel; 
#  (Apoio à TI > Gestão de Usuários > Tabelas > Papel) (M_PAPEL)
 
# 2- Usuário deve ter acesso à tela 'M_VAL_PROCED' do FFCV.
#  (Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)
 
# 3- Configuração 'Libera preços automatic.?'  com o valor 'Sim'
#  (Faturamento > Faturamento de Convênios e Particulares > Configurações > Parâmetros)
SMF-5155:Cadastrar valor de procedimento em tabela de faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5155"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint
    Inserir informações nos seguintes campos: <Cód.Proced> "${dados}[CodProcedimento]", <Procedimento> "${dados}[Procedimento]", <Tabelas> "${dados}[CodTabela]", <Vigencia> "${dados}[Vigencia]", <Vl Honorário> "${dados}[VlHonorario]", <Vl Operacional> "${dados}[VlOperacional]"@nprint
    Clicar no botão "Salvar"@nprint
    Valida mensagem "Registros gravados com sucesso."@print

# robot -v browser:chrome -t "SMF-5173:Excluir Cadastro valor de procedimento em tabela de faturamento que existem em contas fechadas" -d ./5-results/SMF-5173 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# robot -v browser:firefox -t "SMF-5173:Excluir Cadastro valor de procedimento em tabela de faturamento que existem em contas fechadas" -d ./5-results/SMF-5173 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
###
# Pré-condições
# 1- Usuário logado deve ter acesso a tela  'M_VAL_PROCED' do FFCV vinculada ao seu papel; 
#  (Apoio à TI > Gestão de Usuários > Tabelas > Papel) (M_PAPEL)
 
# 2- Usuário deve ter acesso à tela 'M_VAL_PROCED' do FFCV.
#  (Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)
 
# 3- Configuração 'Libera preços automatic.?'  com o valor 'Sim'
#  (Faturamento > Faturamento de Convênios e Particulares > Configurações > Parâmetros)
SMF-5173:Excluir Cadastro valor de procedimento em tabela de faturamento que existem em contas fechadas
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5173"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint
    Clicar no botão "Procurar"@nprint
    Usuario deverá preencher o campo <Cód.Proced> "${dados}[CodProcedimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Clicar no botão Apagar@nprint
    Clicar no botão "Salvar"@nprint
    Valida mensagem "Erro: O Procedimento ${dados}[CodProcedimento] não pode ser alterado ou excluído. Existem contas fechadas com os valores referente ao mesmo."@print
  
# robot -v browser:chrome -t "SMF-5178: Alterar Cadastro valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5178 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# robot -v browser:firefox -t "SMF-5178: Alterar Cadastro valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5178 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
###
# Pré-condições
# 1- Usuário logado deve ter acesso a tela  'M_VAL_PROCED' do FFCV vinculada ao seu papel; 
#  (Apoio à TI > Gestão de Usuários > Tabelas > Papel) (M_PAPEL)
 
# 2- Usuário deve ter acesso à tela 'M_VAL_PROCED' do FFCV.
#  (Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)
 
# 3- Configuração 'Libera preços automatic.?'  com o valor 'Sim'
#  (Faturamento > Faturamento de Convênios e Particulares > Configurações > Parâmetros)
SMF-5178: Alterar Cadastro valor de procedimento em tabela de faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5178"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint
    Clicar no botão "Procurar"@nprint
    Usuario deverá preencher o campo <Cód.Proced> "${dados}[CodProcedimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Usuário deverá informar no campo <Vl Honorário> "${dados}[VlHonorario]" o valor a ser pago para o prestador@nprint
    No campo <Vl operacional> "${dados}[VlOperacional]" informar o valor a ser pago correspondente aos materiais utilizados na execução do procedimento@nprint
    Clicar no botão "Salvar"@print
    
# robot -v browser:chrome -t "SMF-5179:Excluir Cadastro valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5179 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
# robot -v browser:firefox -t "SMF-5179:Excluir Cadastro valor de procedimento em tabela de faturamento" -d ./5-results/SMF-5179 "3-tests/Faturamento de convenio e particulares/Tabelas/Valores de Procedimentos/Procedimentos.robot"
###
# Pré-condições
# 1- Usuário logado deve ter acesso a tela  'M_VAL_PROCED' do FFCV vinculada ao seu papel; 
#  (Apoio à TI > Gestão de Usuários > Tabelas > Papel) (M_PAPEL)
 
# 2- Usuário deve ter acesso à tela 'M_VAL_PROCED' do FFCV.
#  (Apoio à TI > Gestão de Usuários > Autorização > Usuários) (M_USUARIOS)
 
# 3- Configuração 'Libera preços automatic.?'  com o valor 'Sim'
#  (Faturamento > Faturamento de Convênios e Particulares > Configurações > Parâmetros)
SMF-5179:Excluir Cadastro valor de procedimento em tabela de faturamento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-5179"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Tabelas>Valores dos Procedimentos>Procedimentos"@nprint
    Clicar no botão "Procurar"@nprint
    Usuario deverá preencher o campo <Cód.Proced> "${dados}[CodProcedimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Apaga e valida numero dos Valores dos Procedimentos@print    