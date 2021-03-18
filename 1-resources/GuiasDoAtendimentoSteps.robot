##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Tabelas de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/GuiasDoAtendimentoPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${GuiasDoAtendimendoPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${GuiasDoAtendimendoPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${GuiasDoAtendimendoExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${GuiasDoAtendimendoAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${GuiasDoAtendimendoApagarBtn}                        120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoApagarBtn}
    Sleep                            2
    Capture Screen  

# SMF-7742:Realizar uma Pré-Autorização Local de uma Guia 

Usuário deverá informar o <Atendimento> "${codAtendimento}"
    Sleep                            5
    Wait Until Element Is Visible    ${GuiasDoAtendimendoCodAtendimento}         120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoCodAtendimento}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoCodAtendimento}         ${codAtendimento}
    Capture Screen
    
Selecione uma Guia com status de "Solicitada"
    Sleep                            4
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSolicitadasClick}       120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSolicitadasClick}
    Sleep                            3
    Capture Screen

Clicar no botão [Pré Autorização Local]
    Sleep                             4
    Wait Until Element Is Visible     ${GuiasDoAtendimendoPreAutorizacaoBtn}     120
    SeleniumLibrary.Click Element     ${GuiasDoAtendimendoPreAutorizacaoBtn}
    Sleep                             2
    Capture Screen  

Clicar no botão [Autorizar]
    Sleep                             4
    Wait Until Element Is Visible     ${GuiasDoAtendimendoAutoriazarBtn}         120
    SeleniumLibrary.Click Element     ${GuiasDoAtendimendoAutoriazarBtn}
    Sleep                             2
    Capture Screen 

Clicar no botão [Cancelamento de Solicitação TISS] 
    Sleep                             4
    Wait Until Element Is Visible     ${GuiasDoAtendimendoCancelamentoSolicitacaoTissBtn}         120
    SeleniumLibrary.Click Element     ${GuiasDoAtendimendoCancelamentoSolicitacaoTissBtn}
    Sleep                             2
    Capture Screen 

Clicar no Aviso [Sim]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoAvisoSimBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoAvisoSimBtn}
    Sleep                            2
    Capture Screen

Usuário deverá informar a descrição pelo cancelamento da solicitação "${descricaoCancelamento}"
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoMotivoCancelamentoInput}          120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoMotivoCancelamentoInput}
    Sleep                            3
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoMotivoCancelamentoInput}          ${descricaoCancelamento}


Clicar no botão [Confirmar]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoConfirmaBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoConfirmaBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Nova Guia]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoNovaGuiaBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoNovaGuiaBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Solicitar]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSolicitarBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSolicitarBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Solicitar Manutenção de Guias]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSolicitarManutencaoGuiaBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSolicitarManutencaoGuiaBtn}
    Sleep                            2
    Capture Screen


#######################################################################################################

Usuário deverá preencher os campos <NumAtendimento>"${numAtendimento}", <Tipo>"${numTipo}" <Procedimento>"${numProcedimento}"
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoNumAtendimentoInput}               120
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoNumAtendimentoInput}               ${numAtendimento}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoNumTipoClick}                      120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoNumTipoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoNumTipoInput}                      ${numTipo}
    Capture Screen

    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoNumProcedimentoClick}               120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoNumProcedimentoClick}
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoNumProcedimentoInput}               ${numProcedimento}
    Sleep                            4
    Capture Screen

#######################################################################################################

Salvar Nova Guia 
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSalvarNovaGuia}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSalvarNovaGuia}
    Sleep                            2
    Capture Screen

Usuário deverá selecionar uma Guia de Tipo "OPME" 
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoRelatorioOPMEBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoRelatorioOPMEBtn}
    Sleep                            2
    Capture Screen

Usuário deverá selecionar a "Saída do Relatório" "${saidaRelatorio}"
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSaidaRelatorioClick}         120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSaidaRelatorioClick}
    SeleniumLibrary.Input Text       ${GuiasDoAtendimendoSaidaRelatorioInput}         ${saidaRelatorio}
    Sleep                            4
    Capture Screen

Clicar no botão [Confirmar] da Tela de Manutenção de Guias
     Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoConfirmaMntGuiasBtn}         120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoConfirmaMntGuiasBtn}
    Sleep                            2
    Capture Screen


Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoAvisoOkBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Imprimir]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoImprimirBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoImprimirBtn}
    Sleep                            5
    Capture Screen
    
Clicar no botão [Sair]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoSairBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoSairBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Incluir item]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDoAtendimendoIncluirItemBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDoAtendimendoIncluirItemBtn}
    Sleep                            2
    Capture Screen

