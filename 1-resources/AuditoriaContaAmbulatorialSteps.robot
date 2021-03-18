##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Tabelas de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/AuditoriaContaAmbulatorialPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${AuditoriaContaAmbulatorialPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialApagarBtn}                        120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialApagarBtn}
    Sleep                            2
    Capture Screen  

# SMF-4460:Alterar Quantidade de Item para Maior, por meio da Auditoria Ambulatorial

Usuário deverá informar o <Atendimento> "${codAtendimento}"
    Sleep                            2
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialCodAtendimento}         120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialCodAtendimento}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialCodAtendimento}         ${codAtendimento}
    Capture Screen
    
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberada}" para uma quantidade superior a atual
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialQtdeLiberadaInput}          ${qtdeLiberada}
    Capture Screen

Usuário deverá informar o <Motivo> "${motivo}"
    Sleep                            2
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialMotivoClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialMotivoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialMotivoInput}           ${motivo}
    Capture Screen
    


######################################################################################################
# SMF-4467 : Alterar Quantidade de Item para Menor, por meio da Auditoria Ambulatorial
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberadaMenor}" para uma quantidade inferior e superior a zero
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialQtdeLiberadaInput}          ${qtdeLiberadaMenor}
    Capture Screen


#######################################################################################################
# SMF-4470 : Excluir Item Lançado em Conta Ambulatorial, por meio da Auditoria Ambulatorial
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberadaZero}" para zero
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialQtdeLiberadaInput}          ${qtdeLiberadaZero}
    Capture Screen


#######################################################################################################

# SMF-4471:Alterar Valor de Item, por meio da Auditoria Ambulatorial  
Usuário deverá informar o <Valor liber.> "${valorLiberado}" para um valor diferente do atual
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialValorLiberadoClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialValorLiberadoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialValorLiberadoInput}          ${valorLiberado}
    Capture Screen

#######################################################################################################

# SMF-4472:Alterar Percentual de Item, por meio da Auditoria Ambulatorial
Usuário deverá informar o <% Proc. liber.> ${porcentagemLiberada}" para um valor diferente do atual
    Sleep                            2
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialPorcentagemLiberadaClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialPorcentagemLiberadaClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialPorcentagemLiberadaInput}           ${porcentagemLiberada}
    Capture Screen

#######################################################################################################

# SMF-4477 : Cancelar Auditoria Ambulatorial para Conta
Clicar no botão [Canc. Auditoria]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialCancelarAuditoriaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialCancelarAuditoriaBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Conta]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialContaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialContaBtn}
    Sleep                            2
    Capture Screen

#######################################################################################################
# SMF-4478:Cancelar Auditoria Ambulatorial para Item
Clicar no botão [Item]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialItemBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialItemBtn}
    Sleep                            2
    Capture Screen

#######################################################################################################
Usuário deverá marcar o campo <Paciente Paga> 
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialPacientePagaCheck}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialPacientePagaCheck}
    Sleep                            2
    Capture Screen

#######################################################################################################

Clicar no botão [Relatório de Auditoria]
    Sleep                            1
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialRelatorioAuditoriaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialRelatorioAuditoriaBtn}
    Sleep                            1
    Capture Screen

Usuário deverá escolher a <saída do relatório> "${saidaRelatorio}" 
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialSaidaRelatorioClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialSaidaRelatorioClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialSaidaRelatorioInput}          ${saidaRelatorio}
    Capture Screen

#######################################################################################################


Usuário deverá preencher os campos <Grupo>"${grupo}", <Procedimento>"${procedimento}", <Qtde.>"${qtdLancamento}"
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialGrupo}                      120
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialGrupo}                      ${grupo}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialProcedimentoClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialProcedimentoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialProcedimentoInput}          ${procedimento}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialQtdLancamentoClick}         120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialQtdLancamentoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialQtdLancamentoInput}         ${qtdLancamento}
    Capture Screen

#######################################################################################################

Usuário deverá preencher os campos <Motivo Aud.>"${motivoAuditoria}", <Setor>"${setor}", <Setor Exec.>"${setirExec}", <Prestador>"${prestador}"
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialMotivoAuditoriaClick}    120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialMotivoAuditoriaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialMotivoAuditoriaInput}    ${motivoAuditoria}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialSetorClick}              120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialSetorClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialSetorInput}              ${setor}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialSetorExecClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialSetorExecClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialSetorExecInput}          ${setirExec}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialPrestadorClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialPrestadorClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaAmbulatorialPrestadorInput}          ${prestador}
    Capture Screen

#######################################################################################################
Usuário deverá desmarcar o campo <Pronta>
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialProntaClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialProntaClick}
    Sleep                            2
    Capture Screen

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialAvisoOkBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Imprimir]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialImprimirBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialImprimirBtn}
    Sleep                            7
    Capture Screen
    
Clicar no botão [Sair]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialSairBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialSairBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Incluir item]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaAmbulatorialIncluirItemBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaAmbulatorialIncluirItemBtn}
    Sleep                            2
    Capture Screen

