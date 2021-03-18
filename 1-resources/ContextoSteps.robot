##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
Resource    ../2-pages/ContextoPage.robot
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Login
    Nova sessão
    Realiza Login        ${dadosLoginUsuario}        ${dadosLoginSenha}       ${dadosLoginEmpresa}


### Enviar o caminho completo do menu separado por >
### Exemplo: 
###         titulo_do_menu>titulo_do_submenu>titulo_do_menu
Quando navego no menu "${caminhoSelecaoMenu}"

    @{listaItensMenu}    Converte string em lista    ${caminhoSelecaoMenu}    >

    FOR     ${itemMenu}     IN      @{listaItensMenu}
        Seleciona item no menu      ${itemMenu}
        Log To Console              *** Item ${itemMenu} selecionado no menu
        Log                         *** Item ${itemMenu} selecionado no menu
        Capture Page Screenshot
    END

### Enviar o caminho completo do menu separado por >
### Exemplo:
###           titulo_do_menu>titulo_do_submenu>titulo_do_menu
Acessar a tela "${caminhoSelecaoMenu}"${printscreen}

    Click Element                        ${HomeXpathBtnMenu}

    @{listaItensMenu}                    Converte string em lista                       ${caminhoSelecaoMenu}                         >

    FOR                                  ${itemMenu}                                    IN                                            @{listaItensMenu}
        Seleciona item no menu               ${itemMenu}
        Log To Console                       *** Item ${itemMenu} selecionado no menu
        Log                                  *** Item ${itemMenu} selecionado no menu
    END
                
    # ${visivel}                           Imagem Visivel                                 ${imagens}\\${so}_${browser}_escolher.png                120
    # Run Keyword If                       '${visivel}' == 'true'                         Click na imagem                              ${so}_${browser}_escolher.png                     60
    Click na imagem                      ${so}_${browser}_alert.png                     60
    Seleciona frame                      ${IdIframe}                                    180
    Sleep                                3
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

### Clica nos botões de cabeçalho após a troca do frame
Clicar no botão "${titulo}"${printscreen}

    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen
    Click Elemento por titulo            ${titulo}                                      120
