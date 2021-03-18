#################################################################################################################################################################
# Autor: Thiago Benites
# Decrição: Exemplo de como criar uma suite de teste
#################################################################################################################################################################
# Execução Exemplo:
# chrome:  robot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# firefox: robot -v browser:firefox -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
#################################################################################################################################################################
# Execução modo headless (invisível)
# chrome:  robot -v browser:headlesschrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# firefox: robot -v browser:headlessfirefox -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
#################################################################################################################################################################
*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/ContaDoPacienteSteps.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessãojrobot -v browser:chrome -d ./5-results/FATUR_1.31_CONSULTA_DE_CONTA_DE_PACIENTE "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_consultas_conta_paciente
# Recebe dados do gerenciador
${dados}

*** Test Case ***
###############################################################################################################################
# Pré-condições (para todos os cenários)
# 1- Usuário deve estar vinculado à tela 'Conta do Paciente'; 
# (Apoio à TI > Gestão de Usuários > Autorização > Usuários)(M_USUARIOS)
 
# 2- Usuário logado deve ter seu papel vinculado à tela 'Conta do Paciente';
# (Apoio à TI > Gestão de Usuários > Tabelas > Papel)(M_PAPEL)
 
# 3- Existir atendimentos/contas de pacientes, do tipo: "Ambulatorial", "Urgência e Emergência", "Externo", "Internação" ou "Home Care".
# (Atendimento > Ambulatório > Atendimentos > Não Agendados)(ATEURG)
# (Atendimento >  Urgência e Emergência > Atendimento > Atendiment)(ATEURG)
# (Diagnóstico e Terapia > Laboratório de Análises Clínicas > Atendimento > Atendimento Externo)(ATEURG)
# (Diagnóstico e Terapia > Diagnóstico por Imagem > Atendimentos > Atendimento Externo)(ATEURG)
# (Atendimento > Internação > Atendimento > Internação)(INT_PACOK) 
# (Internação > Internação Domiciliar (Home Care) > Recepção > Internação)(M_INT_HOCA)
###############################################################################################################################

# robot -v browser:chrome -t "SMF-4193:Consultar Contas de Pacientes pela data de Alta" -d ./5-results/SMF-4193 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4193:Consultar Contas de Pacientes pela data de Alta" -d ./5-results/SMF-4193 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4193:Consultar Contas de Pacientes pela data de Alta
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4193"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Dt. Alta> "${dados}[DtAlta]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print

# robot -v browser:chrome -t "SMF-4838:Consultar Contas de Pacientes pelo tipo do Atendimento" -d ./5-results/SMF-4838 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4838:Consultar Contas de Pacientes pelo tipo do Atendimento" -d ./5-results/SMF-4838 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4838:Consultar Contas de Pacientes pelo tipo do Atendimento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4838"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Tipo do Atendimento> "${dados}[TipoAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print

# robot -v browser:chrome -t "SMF-4840:Pesquisar contas de pacientes pelo convênio" -d ./5-results/SMF-4840 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4840:Pesquisar contas de pacientes pelo convênio" -d ./5-results/SMF-4840 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4840:Pesquisar contas de pacientes pelo convênio
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4840"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Convenio do Atendimento> "${dados}[ConvenioAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print

# robot -v browser:chrome -t "SMF-4851:Pesquisar contas de pacientes Data do Atendimento" -d ./5-results/SMF-4851 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4851:Pesquisar contas de pacientes Data do Atendimento" -d ./5-results/SMF-4851 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4851:Pesquisar contas de pacientes Data do Atendimento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4851"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Dt do Atendimento> "${dados}[DtAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print

# robot -v browser:chrome -t "SMF-4853:Consultar Contas de Pacientes pelo código do Prestador" -d ./5-results/SMF-4853 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4853:Consultar Contas de Pacientes pelo código do Prestador" -d ./5-results/SMF-4853 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4853:Consultar Contas de Pacientes pelo código do Prestador
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4853"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Prestador> "${dados}[CodPrestador]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print
    
# robot -v browser:chrome -t "SMF-4856:Consultar Contas de Pacientes pela Número do atendimento" -d ./5-results/SMF-4856 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4856:Consultar Contas de Pacientes pela Número do atendimento" -d ./5-results/SMF-4856 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4856:Consultar Contas de Pacientes pela Número do atendimento
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4856"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Atendimento> "${dados}[NumAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@print

# robot -v browser:chrome -t "SMF-4861:Imprimir Relatório" -d ./5-results/SMF-4861 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4861:Imprimir Relatório" -d ./5-results/SMF-4861 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4861:Imprimir Relatório
    ${dados}        Seleciona massa de dados na suite "config_form_nf" do caso de teste "SMF-2711"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Atendimento> "${dados}[NumAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Sistema deverá exibir a tela preenchida, desde que existam dados, conforme parâmetros aplicados@nprint
    Clicar no botão Conta@nprint
    Usuário deverá selecionar a <Saída do Relatório> "${dados}[SaidaRelatorio]" e o <Tipo de Impressão> "${dados}[TipoImpressao]"@nprint
    Clicar no botão Imprimir@nprint
    Valida impressão do relatório@print

# robot -v browser:chrome -t "SMF-4864: Consultar Contas de Pacientes pelo tipo do Atendimento com um dado Inválido" -d ./5-results/SMF-4864 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
# robot -v browser:firefox -t "SMF-4864: Consultar Contas de Pacientes pelo tipo do Atendimento com um dado Inválido" -d ./5-results/SMF-4864 "3-tests/Faturamento de convenio e particulares/Consultas/ContaDoPaciente.robot"
###
SMF-4864:Consultar Contas de Pacientes pelo tipo do Atendimento com um dado Inválido
    ${dados}        Seleciona massa de dados na suite "config_form_nf" do caso de teste "SMF-2711"
    Altera massa de dados da "tab_valproced_procedimentos", linha "${dados}[id]", coluna "STATUS", valor "USADA"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Consultas>Conta do Paciente"@nprint
    Usuario deverá preencher o campo <Tipo do Atendimento> "${dados}[TipoAtendimento]"@nprint
    Clicar no botão "Executar Consulta"@nprint
    Valida texto da mensagem "${SMF4864MsgEsperada}"@print