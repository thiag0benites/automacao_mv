##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Manutenção de Remessa 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ManutencaoRemessaPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${ManutencaoRemessaPesquisarBtn}                120
    Sleep                            3
    Click Link                       ${ManutencaoRemessaPesquisarBtn}
    Capture Page Screenshot

# SMF-50:Pesquisar Manutenção de Remessa
Pesquisar Manutenção de Remessa, inserir informações nos seguintes campos: <Convenio> "${codConvenio}", <Competencia> "${dataCompetencia}"
    Wait Until Element Is Visible    ${ManutencaoRemessaXpathConvenioInput}          120
    Sleep                            1
    SeleniumLibrary.Input Text       ${ManutencaoRemessaXpathConvenioInput}          ${codConvenio}

    Wait Until Element Is Visible    ${ManutencaoRemessaXpathDataCompetencia}        120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaXpathDataCompetencia}
    Sleep                            1
    SeleniumLibrary.Input Text       ${ManutencaoRemessaXpathDataCompetenciaInput}   ${dataCompetencia}
    Capture Page Screenshot
    
# SMF-283:Imprimir o relatório de Manutenção de Remessa
Imprimir o relatório de Manutenção de Remessa
    Wait Until Element Is Visible    ${ManutencaoRemessaRelAtentimentoBtn}           120
    Sleep                            2
    SeleniumLibrary.Click Element    ${ManutencaoRemessaRelAtentimentoBtn}
    Capture Page Screenshot
# Clicar o botão [Imprimir]
    Wait Until Element Is Visible    ${ManutencaoRemessaImprimirtBtn}                120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaImprimirtBtn}
    Sleep                            3
    Capture Page Screenshot
# Clicar o botão [Sair]
    Wait Until Element Is Visible    ${ManutencaoRemessaSairBtn}                     120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaSairBtn}
    Sleep                            3
    Capture Page Screenshot

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${ManutencaoRemessaExecutarBtn}                 120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaExecutarBtn}  
    Sleep                            3
    Capture Page Screenshot    

Clicar no botão [Nota Fiscal]
    Wait Until Element Is Visible    ${ManutencaoRemessaNotaFiscalBtn}               120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaNotaFiscalBtn}  
    Capture Page Screenshot   

Selecionar a aba 'Resumo' 
    Wait Until Element Is Visible    ${ManutencaoRemessaAbaResumo}                   120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaAbaResumo} 
    Sleep                            3 
    Capture Page Screenshot 

Digitar Telefone "${NumTelefone}"
    Wait Until Element Is Visible    ${ManutencaoRemessaTelefone}                    120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaTelefone}
    Sleep                            3
    SeleniumLibrary.Input Text       ${ManutencaoRemessaTelefone}                    ${NumTelefone}
    Capture Page Screenshot 

#SMF-3943:Verificar Número de Endereço do Convênio na R_RPS_PADRAO
Clicar no botão [Imprimir NF] 
    Wait Until Element Is Visible    ${ManutencaoRemessaImprimirNFBtn}               120
    SeleniumLibrary.Click Element    ${ManutencaoRemessaImprimirNFBtn}  
    Sleep                            3
    Capture Page Screenshot 