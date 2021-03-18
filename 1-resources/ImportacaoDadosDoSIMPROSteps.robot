##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ImportacaoDadosDoSIMPROPage.robot
### Metodos Genericos
Resource    auxiliar/Genericos.robot
Resource    ../1-resources/ContextoSteps.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
# SMF-5185: Importar Dados SIMPRO com campo "vazio"
O usuário deverá clicar no botão Importar${printscreen}
    Wait Until Element Is Visible        ${btnImportar}                             80
    Sleep                                5
    SeleniumLibrary.Click Element        ${btnImportar}
    Sleep                                5
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

# SMF-5184:Consultar Importação Dados SIMPRO por data inexistente
O usuário deverá clicar no botão Pesquisar${printscreen}
    Wait Until Element Is Visible              ${btnPesquisar}                              120
    Sleep                                      1
    SeleniumLibrary.Click Element              ${btnPesquisar}
    Sleep                                      40
    Run Keyword If                            '${printscreen}' == '@print'                   Capture Screen

Preencher o campo data com um valor Inválido${printscreen}
    Wait Until Element Is Visible        ${dataImportacao}                           6
    Sleep                                5
    SeleniumLibrary.Input Text           ${dataImportacao}                          ${dataInexistenteSMF5184}
    Sleep                                1
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Clicar no botão executar Pesquisa${printscreen}
    Click Element                        ${btnExecutar}
    Sleep                                40
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen


# SMF-5183: Consultar Importação Dados SIMPRO por data
Realizar o preenchimento do campo data com um valor válido${printscreen}
    Wait Until Element Is Visible        ${dataImportacao}                           6
    Sleep                                5
    SeleniumLibrary.Input Text           ${dataImportacao}                          ${dataExistente}
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

# SMF-5182:Cancelar a importação dos Dados SIMPRO


Usuário deverá informar no campo <Vigência> a data de vigência a serem importados. Será exibida automaticamente a data atual
    Wait Until Element Is Visible        ${dataVigencia}                           6
    Sleep                                5
    Click Element                        ${dataVigencia}
    Sleep                                2
    SeleniumLibrary.Input Text           ${dataVigencia}                           ${dataVigenciaSMF5182}

Usuário deverá informar no campo <Tipos de Importação>
    Wait Until Element Is Visible        ${tipoImportacao}                           6
    Sleep                                5
    SeleniumLibrary.Input Text           ${tipoImportacao}                         ${tipoImportacaoSMF5182}

Usuário deverá clicar no checkbox <Novo layout> e deixar marcada
    Wait Until Element Is Visible        ${checkboxNovoLayout}                       5
    Click Element                        ${checkboxNovoLayout}
    Sleep                                3

Usuário deverá informar qual o tipo de arquivo será importado através do radiobox <Valor de fabrica> ou <Valor do consumidor>${printscreen}
    Click Element                        ${raddioButtonValorFabrica}
    Sleep                                2
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen
 
    
Usuário deverá clicar no botão [Cancelar]${printscreen}
    Click Element                        ${btnCancelar}
    Capture Screen
    Sleep                                15
    Capture Screen
    Run Keyword If                       '${printscreen}' == '@print'                   Capture Screen

Informar local de Importação do arquivo
    Wait Until Element Is Visible        id=btnFindFile                                           180
    Sleep                                1
    Click Element                        id=btnFindFile
    Sleep                                7
    Imagem Exist                         ${imagens}\\${so}_upload_input_arquivo.png
    Efetuar Click                        ${imagens}\\${so}_upload_input_arquivo.png
    Digitar Texto                        ${imagens}\\${so}_upload_input_arquivo.png            ${arquivos_upload}\\simpro completa 2017.txt
    Efetuar Click                        ${imagens}\\${so}_upload_abrir.png

Preencher campo data de vigência
    Wait Until Element Is Visible        ${dataVigencia}                                       6
    Sleep                                5
    SeleniumLibrary.Input Text           ${dataVigencia}                                       ${dataVigenciaSMF5181}

Preencher tipo de importação
    Wait Until Element Is Visible        ${tipoImportacao}                                     6
    Sleep                                5
    SeleniumLibrary.Input Text           ${tipoImportacao}                                     ${tipoImportacaoSMF5181}

Clicar no checkbox novo layout
    Click Element                        ${checkboxNovoLayout}
    Sleep                                3

Clicar no raddioButton
    Click Element                        ${raddioButtonValorFabrica}
    Sleep                                3

Clicar no botão cancelar
    Click Element                        ${btnCancelar}
    Sleep                                3
