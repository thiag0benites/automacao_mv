#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Manutenção de Guias (Std)
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Controle de Guias\CentralDeGuias.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Controle de Guias\CentralDeGuias.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../1-resources/bd/BancoDados.robot
Resource            ../../../1-resources/CentralDeGuiasSteps.robot
# Resource            ../../../1-resources/dados/DadosTeste.robot
Resource            ../../../1-resources/ContextoSteps.robot 
Resource            ../../../1-resources/FaturaRemessasSteps.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_contrl_guias_central_guias
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
SMF-4139:Pesquisar Guia pelo Atendimento do Paciente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4139"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4140:Criar Guia de Internação Automaticamente com Procedimento do Atendimento Vinculado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4140"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4147:Criar Guia de Internação Automaticamente sem o Procedimento do Atendimento Vinculado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4147"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4149:Aplicar Número de Guia Disponível, Automaticamente, da Faixa Configurada
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4149"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Selecionar Guia desejada nos resultados "${dados}[campoInternacao]" 
    Clicar no botão Aplicar numeração automática da Faixa de Guias
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4150:Aplicar Número de Guia Manualmente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4150"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoInternacao]"
    Informar o número da Guia "${dados}[campoNumGuia]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-2317:Criar Guia Manualmente
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2317"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no botão Adiciona
    Realizar a pesquisa da Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-2386:Autorizar Guias
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2386"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoPendente]"
    Inserir informações no campo: <Nr Guia> "${dados}[campoNumGuia]", <Situação> "${dados}[campoSituacao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4155:Excluir Guia Autorizada
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4155"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoAutorizada]"
    Clicar no botão Apagar
    Clicar no botão SIM
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4157:Autorizar Guia com Máscara de Senha sem Validação de Caracter Especial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4157"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoSolicitada]"
    Informar o campo Senha "${dados}[senha]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4251:Autorizar Guia com Máscara de Senha com Validação de Caracter Especial
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4251"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoSolicitada]"
    Informar o campo Senha "${dados}[senha]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-4159:Anexar Arquivos em Guia
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4159"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Escolher a Guia desejada nos resultados "${dados}[campoSituacao]"
    Clicar no botão [Clique para acessar a pasta de Arquivos Anexos desta Guia]
    Inserir informações no campo: <Tipo> "${dados}[guiaTipo]", <Descrição> "${dados}[guiaDescriçã]"
    Informar local de Importação do arquivo
    Realizar o clique no botão retornar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

# SMF-4161:Excluir Arquivo Anexo em Guia
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
#     Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4161}" - SMF4161
#     Executar a pesquisa
#     Clicar no botão [Clique para acessar a pasta de Arquivos Anexos desta Guia]
#     Selecionar a Guia desejada nos resultados - SMF4161
#     Clicar no botão Excluir
#     Clicar no botão confirmar Sim
#     Clicar no botão Salvar

# SMF-4167:Criar Histórico de Observações para a Guia
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
#     Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4167}" - SMF4167
#     Executar a pesquisa
#     Clicar no botão [Acesso ao Histórico de Observações]
#     Selecionar a Guia desejada nos resultados - SMF4167
#     Descrever o histórico desejado
#     Clicar no botão Salvar

SMF-4170:Criar Guia de Consulta Automaticamente com Procedimento do Atendimento Vinculado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4170"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4171:Criar Guia de Consulta Automaticamente sem o Procedimento do Atendimento Vinculado
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4171"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4175:Criar Automaticamente Guia do tipo "Medicamentos"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4175"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4178:Criar Automaticamente Guia do tipo "SADT"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4178"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4180:Criar Automaticamente Guia do tipo "Materiais"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4180"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4181:Criar Automaticamente Guia do tipo "OPME"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4181"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-4182:Criar Automaticamente Guia do tipo "Procedimento"
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-4182"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa

SMF-3790:Valorar Guias para Fornecedor Direto
### O cenário é similar ao SMF2295 pois refere-se a guia do tipo OPME
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3790"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no Elemento da primeira tabela "${dados}[tipoOPME]"
    Clicar no checkbox F/D
    Clicar no botão Salvar
    Clicar no botão Valorizar

SMF-2385:Validar a Senha de Autorização da Guia
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2385"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no Elemento da primeira tabela

SMF-2295:Marcar Procedimentos em Guia de OPME como Fatura Direto
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-2295"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no Elemento da primeira tabela "${dados}[tipoOPME]"
    Clicar no checkbox F/D
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3670:Gerar Cobrança Individualizada para Sessões de Tratamento com Controle de Guias com Sucesso
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3670"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3680:Gerar Cobrança Individualizada para Sessões de Tratamento com Guia Autorizada com Sucesso
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3680"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3789:Excluir o Motivo de Pendência Informado na Central de Guias com Sucesso
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3789"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Excluir motivo da Pendencia "${dados}[valorPendencia]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-3817:Informar Motivo de Pendência na Guia com Sucesso
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-3817"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Informar motivo da Pendencia "${dados}[valorPendencia]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-7735:Solicitar Guia com Impressão
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7735"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no Elemento da primeira tabela "${dados}[tipoOPME]"
    Clicar no botão Solicitar Guia Pendente
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"

SMF-7736:Editar Guias com Alteração do Tipo
    ${dados}        Seleciona massa de dados na suite "${suite}" do caso de teste "SMF-7736"
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Lançamentos>Controle de Guias>Central de Guias"
    Pesquisar Guia, inserir informações no campo: <Atend.> "${dados}[campoNumAtend]"
    Executar a pesquisa
    Clicar no Elemento da primeira tabela "${dados}[tipoOPME]"
    Alterar o tipo da Guia "${dados}[valorAlteracao]"
    Clicar no botão Salvar
    Altera massa de dados da "${suite}", linha "${dados}[id]", coluna "STATUS", valor "USADA"