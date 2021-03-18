##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Lançamento do Estoque Por Grupo de faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/LancamentoDoEstoquePorGrupoFaturametoPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource      dados/DadosTeste.robot
Resource      ContextoSteps.robot


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
    Seleciona frame                      ${GuiaIdIframe}                                180
    Sleep                                1
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

# SMF-5372:Cadastrar grupos de faturamento para Materiais
Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${grupoFat}", <Setor> "${campoSetor}", <Estoque> "${campoEstoque}", <Classe> "${campoClasse}"
    Wait Until Element Is Visible    ${grupoFat}                                            120
    SeleniumLibrary.Click Element    ${grupoFat}
    Sleep                            1
    SeleniumLibrary.Input Text       ${grupoFat}                                             ${valorGrupoFat}

    Wait Until Element Is Visible    ${campoSetor}                                           15
    SeleniumLibrary.Click Element    ${campoSetor}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoSetorInput}                                      ${valorSetor}

    Wait Until Element Is Visible    ${campoEspecie}                                           15
    SeleniumLibrary.Click Element    ${campoEspecie}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEspecieInput}                                   ${valorEspecie}

    Wait Until Element Is Visible    ${campoEstoque}                                        15
    SeleniumLibrary.Click Element    ${campoEstoque}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEstoqueInput}                                    ${valorEstoque}

    Wait Until Element Is Visible    ${campoClasse}                                         15
    SeleniumLibrary.Click Element    ${campoClasse}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoClasseInput}                                     ${valorClasse}

Clicar no botão Salvar${printscreen}
    Wait Until Element Is Visible              ${btnSalvar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnSalvar}
    Sleep                                      60
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

# SMF-5359:Cadastrar grupos de faturamento para os lançamentos automáticos
Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${grupoFat}", <Setor> "${campoSetor}", <Estoque> "${campoEstoque}", <Classe> "${campoClasse}" - SMF5359
    Wait Until Element Is Visible    ${grupoFat}                                            120
    SeleniumLibrary.Click Element    ${grupoFat}
    Sleep                            1
    SeleniumLibrary.Input Text       ${grupoFat}                                             ${valorGrupoFatSMF5359}

    Wait Until Element Is Visible    ${campoSetor}                                           15
    SeleniumLibrary.Click Element    ${campoSetor}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoSetorInput}                                     ${valorSetorSMF5359}

    Wait Until Element Is Visible    ${campoEspecie}                                        15
    SeleniumLibrary.Click Element    ${campoEspecie}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEspecieInput}                                   ${valorEspecieSMF5359}

    Wait Until Element Is Visible    ${campoEstoque}                                        15
    SeleniumLibrary.Click Element    ${campoEstoque}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEstoqueInput}                                  ${valorEstoqueSMF5359}

    Wait Until Element Is Visible    ${campoClasse}                                         15
    SeleniumLibrary.Click Element    ${campoClasse}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoClasseInput}                                   ${valorClasseSMF5359}

# SMF-5370:Excluir um registro da tela de lançamento por grupos de faturamento
Clicar no botão Pesquisar
    Wait Until Element Is Visible              ${btnPesquisar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnPesquisar}
    Sleep                                      60

Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${grupoFat}"- SMF5370
    Wait Until Element Is Visible    ${grupoFat}                                            120
    SeleniumLibrary.Click Element    ${grupoFat}
    Sleep                            1
    SeleniumLibrary.Input Text       ${grupoFat}                                             ${valorGrupoFatSMF5370}

Clicar no botão Executar${printscreen}
    Wait Until Element Is Visible              ${btnExecutar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnExecutar}
    Sleep                                      60
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

Clicar no botão Apagar${printscreen}
    Wait Until Element Is Visible              ${btnApagar}                              50
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnApagar}
    Sleep                                      60
    Run Keyword If                             '${printscreen}' == '@print'                   Capture Screen

# SMF-5366:Alterar cadastro para os lançamentos de estoque por grupo de Faturamento
Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${grupoFat}", <Setor> "${campoSetor}", <Estoque> "${campoEstoque}", <Classe> "${campoClasse}" - SMF5366
    Wait Until Element Is Visible    ${grupoFat}                                            120
    SeleniumLibrary.Click Element    ${grupoFat}
    Sleep                            1
    SeleniumLibrary.Input Text       ${grupoFat}                                             ${valorGrupoFatSMF5366}

    Wait Until Element Is Visible    ${campoSetor}                                           120
    SeleniumLibrary.Click Element    ${campoSetor}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoSetorInput}                                     ${valorSetorSMF5366}

    Wait Until Element Is Visible    ${campoEspecie}                                        15
    SeleniumLibrary.Click Element    ${campoEspecie}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEspecieInput}                                   ${valorEspecieSMF5366}

    Wait Until Element Is Visible    ${campoEstoque}                                        120
    SeleniumLibrary.Click Element    ${campoEstoque}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoEstoqueInput}                                  ${valorEstoqueSMF5366}

    Wait Until Element Is Visible    ${campoClasse}                                         120
    SeleniumLibrary.Click Element    ${campoClasse}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoClasseInput}                                   ${valorClasseSMF5366}

# SMF-5363:Consultar grupos de faturamento    
Pesquisar grupos de faturamento, inserir informações no campo: <Grup. Fat> "${grupoFat}"
    Wait Until Element Is Visible    ${grupoFat}                                            120
    SeleniumLibrary.Click Element    ${grupoFat}
    Sleep                            1
    SeleniumLibrary.Input Text       ${grupoFat}                                             ${valorGrupoFatSMF5363}
