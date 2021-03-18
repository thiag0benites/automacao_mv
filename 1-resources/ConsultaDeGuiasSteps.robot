##################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Passo a passo do Manutenção de Guias (Std) 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ConsultaDeGuiasPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    dados/DadosTeste.robot

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

Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendimento}"
    Wait Until Element Is Visible    ${GuiaXpathAtendimento}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtendimento}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtendimento}                          ${campoNumAtendimento}
    Capture Page Screenshot


Clicar no botão Executar
    Click Element                              ${GuiaExecutarID}
    Sleep                                      3
    Capture Page Screenshot

Clicar no Elemento da primeira tabela
    Log To Console                       *** Elemento da Tabela: ${campoGuiaSenha}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${campoGuiaSenha}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${campoGuiaSenha}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Page Screenshot

Validar se contém os Procedimentos de Lançamento na segunda tabela
    Log To Console                       *** Elemento da Tabela: ${campoDescProcedimentoConv}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoClickTable}        10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoClickTable}      ${campoDescProcedimentoConv}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${campoDescProcedimentoConv}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Page Screenshot

Validar o código do Paciente
    Element Should Contain               ${GuiaCodigoPaciente}                          ${campoCodPaciente}
    Capture Page Screenshot                        