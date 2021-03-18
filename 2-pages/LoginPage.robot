##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Elementos e metodos da pagina
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource                  ../Config.robot

*** Variable ***
### Elementos da Pagina de Login
${PageIdTxtUsuario}       id=username
${PageIdTxtSenha}         id=password
${PageIdSelectEmpresa}    id=companies
${PageIdBtnLogin}         name=submit
${PageIClassListMenu}     class=nav

*** Keywords ***
### Autor: Thiago Benites
### Data: 17/11/2020
### Descrição: Keyword para realizar e validar o login
Realiza Login
    [Arguments]                      ${usuario}                ${senha}      ${empresa}
    SeleniumLibrary.Input Text       ${PageIdTxtUsuario}       ${usuario}
    SeleniumLibrary.Input Text       ${PageIdTxtSenha}         ${senha}
    Select From List By Label        ${PageIdSelectEmpresa}    ${empresa}
    # Capture Page Screenshot
    Click Button                     ${PageIdBtnLogin}
    Wait Until Element Is Visible    ${PageIClassListMenu}     timeout=30    error=Erro ao efetuar o login
    Sleep                            3
    # Capture Page Screenshot