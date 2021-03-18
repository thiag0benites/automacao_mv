##################################################################################################################################
# Autor: Thiago Benites
# Data: 17/11/2020
# Decrição: Keywords genericas para utilização em qualquer sisteme WEB
##################################################################################################################################
*** Settings ***
### Configurações iniciais
Resource    ../../Config.robot

*** Variable ***
${FILE}     C:\\Users\\letic\\Teste-upload.txt

*** Keywords ***
### Autor: Thiago Benites
### Data: 17/11/2020
### Descrição: Utiliza o sikuli para efetuar em uma imagem visível
##############################################################################################################################################################################
#           Métodos sem retorno (Procedimentos)
##############################################################################################################################################################################
### Método sikuli (erro: não funciona em linux)
Click na imagem sikuli
    [Arguments]                          ${imagem}                              ${timeout}=${60}
    Add Image Path                       ${imagensSikuli}
    ${exist}                             Exists                                 ${imagem}                  ${timeout}
    Run Keyword If                       ${exist}==True                         Click                      ${imagem}
    Log To Console                       *** Efetuado o click em ${imagem} 
    # Capture Page Screenshot

Click na imagem
    [Arguments]                            ${imagem}                              ${timeout}=${60}
    Log                                    *** Imagem Procurada: ${imagem} 
    Log To Console                         *** Imagem Procurada: ${imagem}           
    ImageHorizonLibrary.Wait For           ${imagem}                              ${timeout}
    ImageHorizonLibrary.Click Image        ${imagem}
    Log To Console                         *** Efetuado o click em ${imagem}
                       
Seleciona frame
    [Arguments]                          ${elementoFrame}                       ${timeout}=${60}
    Wait Until Element Is Visible        ${elementoFrame}                       ${timeout}                 O elemento Frame ${elementoFrame} não foi carregado
    Select Frame                         ${elementoFrame}
    Sleep                                1

# Seleciona aba
#     [Arguments]                          ${numAba}

#     FOR        ${i}        IN        RANGE        30
#         Sleep        1
#         @{abas}        Switch Window
#     END

#     Select Window                        ${numAba}

Click Elemento por titulo
    [Arguments]                          ${titulo}                              ${timeout}=${60}
    ${elemento}                          Set Variable                           xpath=//a[@title='${titulo}']
    Wait Until Element Is Visible        ${elemento}                            ${timeout}                 O elemento ${elemento} não foi carregado
    Sleep                                2
    Click Element                        ${elemento}

##############################################################################################################################################################################
#           Métodos com retorno (Funções)
##############################################################################################################################################################################
Converte string em lista
    [Arguments]                      ${valor}                               ${caracter}
    @{lista}                         Split String                           ${valor}                   ${caracter}
    [Return]                         @{lista}

Pega elemento filho por texto
    [Arguments]                      ${locatorElementos}                    ${textoItem}

    @{elementos}                     Get WebElements                        ${locatorElementos}

    FOR                              ${elemento}                            IN                         @{elementos}
    ${textoItemAtual}                SeleniumLibrary.Get Text               ${elemento}
    ${localizouTexto}                Run Keyword And Ignore Error           Should Contain             ${textoItemAtual}        ${textoItem}
    Log To Console                   *** Texto Procurado: ${textoItem}
    Log                              *** Texto Procurado: ${textoItem}
    Log To Console                   *** Linha Atual: ${localizouTexto}
    Log                              *** Linha Atual: ${localizouTexto}
    ${elementoLinha}                 Set Variable                           ${elemento}
    Exit For Loop If                 ${localizouTexto} == ('PASS', None)
    END

    [Return]                         ${elementoLinha}