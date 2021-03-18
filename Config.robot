##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Configurações iniciais
##################################################################################################################################
*** Settings ***
### Interagir com Browser
Library               SeleniumLibrary
### Interagir com elemento por imagem
Library               SikuliLibrary
Library               ImageHorizonLibrary        ${CURDIR}/4-images
### Trabalha com stings
Library               String
Library               DateTime
### Bibliotecas Personalizadas
Library               7-libraries/desktopLibrary/desktop.py
### Banco de dados
Library               DatabaseLibrary

*** Variables ***
${imagens}                ${CURDIR}\\4-images
${arquivos_upload}        ${CURDIR}\\6-files

### Configurações Sistema Operacional
${so}                 windows
# ${so}                 ubuntu

### Configurações do Browser
${browser}            chrome
${ambiente}           qarelease
# ${ambiente}           qadevelop
${url}                http://qarelease.mv.com.br:84/soul-mv/
# ${url}                http://qadevelop.mv.com.br:83/soul-mv/

*** Keywords ***
### Cria Nova Sessão do browser
Nova sessão
    Log                        *** Teste no Sistema Operacional: ${so}
    Log To Console             *** Teste no Sistema Operacional: ${so}
    Open Browser               ${url}                          ${browser}
    Maximize Browser Window
    # Capture Page Screenshot
    Run Keyword If             '${ambiente}' == 'qadevelop'    Realiza Login    ${dadosLoginUsuarioQaDevelop}    ${dadosLoginSenhaQaDevelop}    ${dadosLoginEmpresaQaDevelop}
    Run Keyword If             '${ambiente}' == 'qarelease'    Realiza Login    ${dadosLoginUsuarioQaRelease}    ${dadosLoginSenhaQaRelease}    ${dadosLoginEmpresaQaRelease}

### Encerra sessão do browser
Encerra sessão
    # Capture Page Screenshot
    Close Browser