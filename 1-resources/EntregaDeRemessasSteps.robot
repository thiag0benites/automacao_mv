##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Tabelas de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/EntregaDeRemessasPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${EntregaDeRemessaPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${EntregaDeRemessaPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${EntregaDeRemessaExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Wait Until Element Is Visible    ${EntregaDeRemessaAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${EntregaDeRemessaSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${EntregaDeRemessaApagarBtn}                        120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaApagarBtn}
    Sleep                            2
    Capture Screen  

#SMF-982:Entregar Remessas com Data Prevista para Pagamento Configurada no Convênio

Usuário deverá informar o <código da remessa> "${codEntregaRemessa}"
    Sleep                            2
    Wait Until Element Is Visible    ${EntregaDeRemessaCodInput}         120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaCodInput}
    Sleep                            1
    SeleniumLibrary.Input Text       ${EntregaDeRemessaCodInput}         ${codEntregaRemessa}
    Capture Screen
    
Usuário deverá informar a <Data do Envio> "${dataEnvio}"
    Wait Until Element Is Visible    ${EntregaDeRemessaDataEnvioClick}          120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaDataEnvioClick}
    Sleep                            7
    Wait Until Element Is Visible    ${EntregaDeRemessaDataEnvioClick}          120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaDataEnvioClick}
    SeleniumLibrary.Input Text       ${EntregaDeRemessaDataEnvioInput}          ${dataEnvio}
    Sleep                            1
    Capture Screen

Usuário deverá informar a <Data do Entrega> "${dataEntrega}"
    Sleep                            2
    Wait Until Element Is Visible    ${EntregaDeRemessaDataEntregaClick}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaDataEntregaClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${EntregaDeRemessaDataEntregaInput}           ${dataEntrega}
    Capture Screen
    
Usuário deverá informar a <Data Prevista para Pagamento> "${dataPrevista}"
    Sleep                            2
    Wait Until Element Is Visible    ${EntregaDeRemessaDataPrevistaClick}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaDataPrevistaClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${EntregaDeRemessaDataPrevistaInput}           ${dataPrevista}
    Capture Screen

Usuário deverá informar a <Nr Capa de Lote> "${capaDeLote}"
    Sleep                            1
    Wait Until Element Is Visible    ${EntregaDeRemessaCapaLoteClick}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaCapaLoteClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${EntregaDeRemessaCapaLoteInput}           ${capaDeLote}
    Sleep                            1
    Capture Screen

Clicar no botão [Fechamento/ Entrega da Remessa]
    Wait Until Element Is Visible    ${EntregaDeRemessaFechamentoBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaFechamentoBtn}
    Sleep                            5
    Capture Screen

#SMF-988:Entregar Remessas sem Data Prevista para Pagamento Configurada
Usuário não deverá informar a <Data Prevista para Pagamento> 
    Wait Until Element Is Visible          ${EntregaDeRemessaDataPrevistaClick}           120
    Sleep                                  3
    SeleniumLibrary.Click Element          ${EntregaDeRemessaDataPrevistaClick}
    Sleep                                  3
    SeleniumLibrary.Clear Element Text     ${EntregaDeRemessaDataPrevistaInput}          
    Capture Screen

# SMF-986:Cancelar a Operação de Entrega da Remessa
Clicar no botão <Cancelar Operação>
    Sleep                            3
    Wait Until Element Is Visible    ${EntregaDeRemessaCancelarRemessaBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaCancelarRemessaBtn}
    Sleep                            2
    SeleniumLibrary.Click Element    ${EntregaDeRemessaCancelarRemessaBtn}
    Sleep                            2
    Capture Screen

Clicar no botão [Informar nova Remessa]
    Sleep                            3
    Wait Until Element Is Visible    ${EntregaDeRemessaInformarNovaRemessaBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaInformarNovaRemessaBtn}
    Sleep                            2
    Capture Screen

Clicar no Aviso [OK]
    Sleep                            3
    Wait Until Element Is Visible    ${EntregaDeRemessaAvisoOkBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaAvisoOkBtn}
    Sleep                            2
    Capture Screen


Clicar no botão [Imprimir]
    Sleep                            3
    Wait Until Element Is Visible    ${EntregaDeRemessaImprimirBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaImprimirBtn}
    Sleep                            2
    Capture Screen
    
Clicar no botão [Sair]
    Sleep                            3
    Wait Until Element Is Visible    ${EntregaDeRemessaSairBtn}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaSairBtn}
    Sleep                            2
    Capture Screen

Clicar no <Data de Fechamento>
    Sleep                            1
    Wait Until Element Is Visible    ${EntregaDeRemessaDataFechamentoClick}           120
    SeleniumLibrary.Click Element    ${EntregaDeRemessaDataFechamentoClick}
    Sleep                            1
    Capture Screen
