##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo da Configuração de TISS por Convênio
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ConfiguracaoTISSPorConvenioPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource      dados/DadosTeste.robot


*** Variable ***

*** Keywords ***
### Enviar o caminho completo do menu separado por >
### Exemplo:
###         titulo_do_menu>titulo_do_submenu>titulo_do_menu
Acessar a tela "${caminhoSelecaoMenu}"${printscreen}

    Click Element                    ${HomeXpathBtnMenu}

    @{listaItensMenu}                Converte string em lista                       ${caminhoSelecaoMenu}                      >

    FOR                              ${itemMenu}                                    IN                                         @{listaItensMenu}
    Seleciona item no menu           ${itemMenu}
    Log To Console                   *** Item ${itemMenu} selecionado no menu
    Log                              *** Item ${itemMenu} selecionado no menu
    END

    Click na imagem                      ${so}_${browser}_alert.png                     60
    Seleciona frame                      ${ConfiguracoesXpathFrame}                     180
    Sleep                                1
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

# SMF-5413:Cadastrar o TISS por Convênio
Informar o convênio desejado "${numConvenio}"
    Wait Until Element Is Visible              ${campoConvenio}                              120
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenioInput}                         ${numConvenio}
    Sleep                                      1 

Primeira mensagem, clicar no botão 
    Wait Until Element Is Visible              ${btnOK}                                     50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnOK}
    Sleep                                      60

Selecionar na lista de valores do campo <Versão TISS>, a versão "${numVersao}"
    Wait Until Element Is Visible              ${inputVersao}                              30
    Sleep                                      3
    Click Element                              ${inputVersao}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${inputVersao}                             ${numVersao}
    Sleep                                      1 

Clicar no botão OK
    Wait Until Element Is Visible              ${btnOK}                                     50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnOK}
    Sleep                                      60

# SMF-5656:Validar Serviços do Detalhamento do TISS Versão 3.0 ou superior
Clicar no botão Adicionar 
    Wait Until Element Is Visible              ${btnAdicionar}                              80
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnAdicionar}
    Sleep                                      60
    Capture Screen
    
Preencher o campo Convênio "${numConvenio}"
    Wait Until Element Is Visible              ${campoConvenio}                              50
    Sleep                                      3
    Click Element                              ${campoConvenio}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoConvenioInput}                         ${numConvenio}
    Sleep                                      1 
    Capture Screen

Informar versão TISS "${numVersao}"
    Wait Until Element Is Visible              ${inputVersao}                              15
    Sleep                                      3
    Click Element                              ${inputVersao}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${inputVersao}                             ${numVersao}
    Sleep                                      1 
    Capture Screen

Clicar no botão Detalhamento
    Wait Until Element Is Visible              ${btnDetalhamento}                          50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnDetalhamento}
    Sleep                                      60
    Capture Screen

Informar Serviço "${valorServico}" e Elemento do Serviço " ${valorElemServico}"
    Wait Until Element Is Visible              ${inputServico}                              15
    Sleep                                      3
    Click Element                              ${inputServico}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${inputServico}                             ${valorServico}
    Sleep                                      1 

    Wait Until Element Is Visible              ${inputElementoServico}                      15
    Sleep                                      3
    Click Element                              ${inputElementoServico}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${inputElementoServico}                     ${valorElemServico}
    Sleep                                      1 
    Capture Screen

Clicar no botão Executar
    Wait Until Element Is Visible              ${btnExecutar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExecutar}
    Sleep                                      60
    Capture Screen

Clicar no botão Salvar
    Wait Until Element Is Visible              ${btnSalvar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      60
    Capture Screen

Preencher limite de Guias por lote "${numGuiasLote}"
    Wait Until Element Is Visible              ${campoGuiasLote}                                15
    Sleep                                      3
    Click Element                              ${campoGuiasLote}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${campoGuiasLote}                                ${numGuiasLote}
    Sleep                                      1 
    Capture Screen

Clicar no botão Sair
    Wait Until Element Is Visible              ${btnSair}                                    50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSair}
    Sleep                                      60
    Capture Screen

Preencher Serviço com a opção "${valorServico}"
    Wait Until Element Is Visible              ${inputServico}                              15
    Sleep                                      3
    Click Element                              ${inputServico}
    Sleep                                      1            
    SeleniumLibrary.Input Text                 ${inputServico}                             ${valorServico}
    Sleep                                      1 
    Capture Screen

Clicar no botão Pesquisar
    Wait Until Element Is Visible              ${btnPesquisar}                                50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnPesquisar}
    Sleep                                      60
    Capture Screen