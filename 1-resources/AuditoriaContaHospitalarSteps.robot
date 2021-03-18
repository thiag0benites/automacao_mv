##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/AuditoriaContaHospitalarPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${AuditoriaContaHospitalarPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarExecutarBtn}  
    Sleep                            4
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarApagarBtn}                        120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarApagarBtn}
    Sleep                            2
    Capture Screen  

# SMF-4460:Alterar Quantidade de Item para Maior, por meio da Auditoria Ambulatorial

Usuário deverá informar a <Conta> "${codConta}"
    Sleep                            4
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarCodConta}         120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarCodConta}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarCodConta}         ${codConta}
    Capture Screen
    
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberada}" para uma quantidade superior a atual
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarQtdeLiberadaInput}          ${qtdeLiberada}
    Capture Screen

Usuário deverá informar o <Motivo> "${motivo}"
    Sleep                            2
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarMotivoClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarMotivoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarMotivoInput}           ${motivo}
    Capture Screen
    


######################################################################################################
# SMF-4467 : Alterar Quantidade de Item para Menor, por meio da Auditoria Ambulatorial
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberadaMenor}" para uma quantidade inferior e superior a zero
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarQtdeLiberadaInput}          ${qtdeLiberadaMenor}
    Capture Screen


#######################################################################################################
# SMF-4470 : Excluir Item Lançado em Conta Ambulatorial, por meio da Auditoria Ambulatorial
Usuário deverá informar o <Qtde. liber.> "${qtdeLiberadaZero}" para zero
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarQtdeLiberadaClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarQtdeLiberadaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarQtdeLiberadaInput}          ${qtdeLiberadaZero}
    Capture Screen


#######################################################################################################

# SMF-4471:Alterar Valor de Item, por meio da Auditoria Ambulatorial  
Usuário deverá informar o <Valor liber.> "${valorLiberado}" para um valor diferente do atual
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarValorLiberadoClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarValorLiberadoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarValorLiberadoInput}          ${valorLiberado}
    Capture Screen

#######################################################################################################

# SMF-4472:Alterar Percentual de Item, por meio da Auditoria Ambulatorial
Usuário deverá informar o <% Proc. liber.> ${porcentagemLiberada}" para um valor diferente do atual
    Sleep                            2
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarPorcentagemLiberadaClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarPorcentagemLiberadaClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarPorcentagemLiberadaInput}           ${porcentagemLiberada}
    Capture Screen

#######################################################################################################

# SMF-4477 : Cancelar Auditoria Ambulatorial para Conta
Clicar no botão [Canc. Auditoria]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarCancelarAuditoriaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarCancelarAuditoriaBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Conta]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarContaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarContaBtn}
    Sleep                            2
    Capture Screen

#######################################################################################################
# SMF-4478:Cancelar Auditoria Ambulatorial para Item
Clicar no botão [Item]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarItemBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarItemBtn}
    Sleep                            2
    Capture Screen

#######################################################################################################
Usuário deverá marcar o campo <Paciente Paga> 
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarPacientePagaCheck}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarPacientePagaCheck}
    Sleep                            2
    Capture Screen

#######################################################################################################

Clicar no botão [Relatório de Auditoria]
    Sleep                            1
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarRelatorioAuditoriaBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarRelatorioAuditoriaBtn}
    Sleep                            1
    Capture Screen

Usuário deverá escolher a <saída do relatório> "${saidaRelatorio}" 
    Sleep                            7
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarSaidaRelatorioClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarSaidaRelatorioClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarSaidaRelatorioInput}          ${saidaRelatorio}
    Capture Screen

#######################################################################################################


Usuário deverá preencher os campos <Grupo>"${grupo}", <Procedimento>"${procedimento}", <Qtde.>"${qtdLancamento}"
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarGrupo}                      120
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarGrupo}                      ${grupo}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarProcedimentoClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarProcedimentoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarProcedimentoInput}          ${procedimento}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarQtdLancamentoClick}         120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarQtdLancamentoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarQtdLancamentoInput}         ${qtdLancamento}
    Capture Screen

#######################################################################################################

Usuário deverá preencher os campos <Motivo Aud.>"${motivoAuditoria}", <Setor>"${setor}", <Setor Exec.>"${setirExec}", <Prestador>"${prestador}"
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarMotivoAuditoriaClick}    120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarMotivoAuditoriaClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarMotivoAuditoriaInput}    ${motivoAuditoria}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarSetorClick}              120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarSetorClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarSetorInput}              ${setor}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarSetorExecClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarSetorExecClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarSetorExecInput}          ${setirExec}
    Capture Screen

     Sleep                           3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarPrestadorClick}          120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarPrestadorClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${AuditoriaContaHospitalarPrestadorInput}          ${prestador}
    Capture Screen

#######################################################################################################
Usuário deverá desmarcar o campo <Pronta>
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarProntaClick}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarProntaClick}
    Sleep                            2
    Capture Screen

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarAvisoOkBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Imprimir]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarImprimirBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarImprimirBtn}
    Sleep                            7
    Capture Screen
    
Clicar no botão [Sair]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarSairBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarSairBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Incluir item]
    Sleep                            3
    Wait Until Element Is Visible    ${AuditoriaContaHospitalarIncluirItemBtn}           120
    SeleniumLibrary.Click Element    ${AuditoriaContaHospitalarIncluirItemBtn}
    Sleep                            2
    Capture Screen

