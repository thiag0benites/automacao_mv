##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Tabelas de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/CentralDeAutorizacoesPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${GuiasDeAutorizacoesPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesApagarBtn}                        120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesApagarBtn}
    Sleep                            2
    Capture Screen  

###########################################################################################################################

Usuário deverá informar o <Atendimento> "${codAtendimento}"
    Sleep                            5
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesCodAtendimento}         120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesCodAtendimento}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiasDeAutorizacoesCodAtendimento}         ${codAtendimento}
    Capture Screen


Usuário deverá informar o <Pré-Int.> "${codPreAtendimento}"
    Sleep                            5
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesCodPreAtendimentoClick}                      120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesCodPreAtendimentoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${GuiasDeAutorizacoesCodPreAtendimentoInput}                      ${codPreAtendimento}
    Capture Screen


Clicar duas vezes na linha da coluna <Atendimento>
    Sleep                                   3
    Wait Until Element Is Visible           ${GuiasDeAutorizacoesCodAtendimento}         120
    SeleniumLibrary.Double Click Element    ${GuiasDeAutorizacoesCodAtendimento}
    Sleep                                   3
    Capture Screen

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesAvisoOkBtn}
    Sleep                            2
    Capture Screen

Abrir a aba [Mais Detalhes] 
    Sleep                             4
    Wait Until Element Is Visible     ${GuiasDeAutorizacoesMaisDetalhesAba}     120
    SeleniumLibrary.Click Element     ${GuiasDeAutorizacoesMaisDetalhesAba}
    Sleep                             2
    Capture Screen  

Excluir a informação do campo <Motivo Pendência> 
    Sleep                            4
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesMotivoPendenciaClick}       120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesMotivoPendenciaClick}
    Sleep                            3
    Capture Screen

Salvar [Mais Detalhes]
    Sleep                            3
    Wait Until Element Is Visible    ${GuiasDeAutorizacoesSalvarMaisDetalhes}           120
    SeleniumLibrary.Click Element    ${GuiasDeAutorizacoesSalvarMaisDetalhes}
    Sleep                            2
    Capture Screen
