##################################################################################################################################
# Autor: Letícia Andrade
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/CentralDeGuiasPage.robot

### Metodos Genericos
Resource    auxiliar/Genericos.robot
### Dados do Teste
Resource    ../1-resources/dados/DadosTeste.robot
Resource    ../Config.robot

*** Variable ***

*** Keywords ***
# SMF-4139:Pesquisar Guia pelo Atendimento do Paciente
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtend}"
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtend}
    Capture Screen

Executar a pesquisa
    Wait Until Element Is Visible              ${btnExecutar}                          10
    Click Element                              ${btnExecutar}
    Sleep                                      7
    Capture Screen

# SMF-4140:Criar Guia de Internação Automaticamente com Procedimento do Atendimento Vinculado
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4140}" - SMF4140
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4140}

# SMF-4147:Criar Guia de Internação Automaticamente sem o Procedimento do Atendimento Vinculado
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4147}" - SMF4147
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4147}

# SMF-4149:Aplicar Número de Guia Disponível, Automaticamente, da Faixa Configurada
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4149}" - SMF4149
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4149}

Selecionar Guia desejada nos resultados "${campoInternacao}"
    Log To Console                       *** Elemento da Tabela: ${campoGuiaSenha}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${campoInternacao}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${campoInternacao}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Clicar no botão Aplicar numeração automática da Faixa de Guias
    Wait Until Element Is Visible              ${btnAplicarNum}                          10
    Click Element                              ${btnAplicarNum}
    Capture Screen
    Sleep                                      16
    Capture Screen


# SMF-4150:Aplicar Número de Guia Manualmente
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4150}" - SMF4150
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4150}
    Capture Screen

Escolher a Guia desejada nos resultados "${campo}"
    Log To Console                       *** Elemento da Tabela: ${campo}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${campo}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${campo}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Informar o número da Guia "${nrGuia}"
    Wait Until Element Is Visible    ${campoNrGuia}                                      30
    SeleniumLibrary.Click Element    ${campoNrGuia}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoNrGuiaInput}                               ${nrGuia}
    Sleep                            1
    Capture Screen

Clicar no botão Salvar
    Wait Until Element Is Visible              ${btnSalvar}                              10
    Click Element                              ${btnSalvar}
    Sleep                                      3
    Capture Screen

# SMF-2317:Criar Guia Manualmente
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF2317}" - SMF2317
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF2317}
    Capture Screen

Clicar no botão Adiciona
    Wait Until Element Is Visible              ${btnAdiciona}                    10
    Click Element                              ${btnAdiciona}
    Sleep                                      3

Realizar a pesquisa da Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF2317}"
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF2317}

    Wait Until Element Is Visible    ${tipoAtend}                               120
    SeleniumLibrary.Click Element    ${tipoAtend} 
    Sleep                            5
    SeleniumLibrary.Input Text       ${tipoAtendInput}                           ${tipoAtendSMF2317}  

# SMF-2386:Autorizar Guias
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF2386}" - SMF2386
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF2386}
    Capture Screen

Inserir informações no campo: <Nr Guia> "${campoNumGuia}", <Situação> "${campoSituacao}"
    Wait Until Element Is Visible    ${campoNrGuia}                               120
    SeleniumLibrary.Click Element    ${campoNrGuia} 
    Sleep                            5
    SeleniumLibrary.Input Text       ${campoNrGuiaInput}                          ${campoNumGuia} 

    Wait Until Element Is Visible    ${xpathSituacao}                               120
    SeleniumLibrary.Click Element    ${xpathSituacao} 
    Sleep                            5
    SeleniumLibrary.Input Text       ${xpathSituacaoInput}                           ${campoSituacao} 
    Sleep                            5
    Capture Screen
    
# SMF-4155:Excluir Guia Autorizada
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4155}" - SMF4155
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4155}
    Capture Screen

Clicar no botão Apagar
    Wait Until Element Is Visible              ${btnApagar}                    10
    Click Element                              ${btnApagar}
    Sleep                                      3
    Capture Screen

Clicar no botão SIM
    Wait Until Element Is Visible              ${btnSim}                       10
    Click Element                              ${btnSim}
    Sleep                                      3

# SMF-4157:Autorizar Guia com Máscara de Senha sem Validação de Caracter Especial
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4157}" - SMF4157
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4157}

Informar o campo Senha "${senha}"
    Wait Until Element Is Visible    ${GuiaXpathSenha}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathSenha}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathSenhaInput}                      ${senha}
    Sleep                            1

Informar o campo Senha com caracter especial
    Wait Until Element Is Visible    ${GuiaXpathSenha}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathSenha}
    Sleep                            40
    # SeleniumLibrary.Input Text       ${GuiaXpathSenha}                          ${senhaSMF4251}
    # Sleep                            1


# SMF-4159:Anexar Arquivos em Guia
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4159}" - SMF4159
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4159}

Clicar no botão [Clique para acessar a pasta de Arquivos Anexos desta Guia]
    Wait Until Element Is Visible              ${btnAnexos}                     10
    Click Element                              ${btnAnexos}
    Sleep                                      3

Inserir informações no campo: <Tipo> "${guiaTipo}", <Descrição> "${guiaDescrição}"
    Wait Until Element Is Visible    ${GuiaXpathTipo2}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathTipo2}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathTipoInput2}                     ${guiaTipo}

    Wait Until Element Is Visible    ${GuiaXpathDescricao2}                     120
    SeleniumLibrary.Click Element    ${GuiaXpathDescricao2}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathDescricaoInput2}                ${guiaDescrição}

Informar local de Importação do arquivo
    Wait Until Element Is Visible        ${campoUpload}                                           180
    Sleep                                1
    Click Element                        ${campoUpload} 
    Sleep                                7
    Imagem Exist                         ${imagens}\\${so}_upload_input_arquivo.png
    Efetuar Click                        ${imagens}\\${so}_upload_input_arquivo.png
    Digitar Texto                        ${imagens}\\${so}_upload_input_arquivo.png            ${arquivos_upload}\\teste.pdf
    Efetuar Click                        ${imagens}\\${so}_upload_abrir.png

Realizar o clique no botão retornar
    Wait Until Element Is Visible              ${btnRetornar}                         100
    Click Element                              ${btnRetornar}
    Sleep                                      3

# SMF-4161:Excluir Arquivo Anexo em Guia
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4161}" - SMF4161
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4161}
    Sleep                            1

Selecionar a Guia desejada nos resultados - SMF4161

Clicar no botão Excluir
    Wait Until Element Is Visible              ${btnExcluir}                             100
    Click Element                              ${btnExcluir}
    Sleep                                      3
Clicar no botão confirmar Sim
    Wait Until Element Is Visible              ${btnConfirmaSim}                         100
    Click Element                              ${btnConfirmaSim}
    Sleep                                      3

# SMF-4167:Criar Histórico de Observações para a Guia
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4167}" - SMF4167
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4167}

Clicar no botão [Acesso ao Histórico de Observações]
    Wait Until Element Is Visible              ${btnHistObservacoes}                         100
    Click Element                              ${btnHistObservacoes}
    Sleep                                      3

Selecionar a Guia desejada nos resultados - SMF4167

Descrever o histórico desejado
    Wait Until Element Is Visible    ${guiaXpathDescricao}                                  120
    SeleniumLibrary.Click Element    ${guiaXpathDescricao}
    Sleep                            1
    SeleniumLibrary.Input Text       ${guiaXpathDescricao}                                ${campoDescSMF4167}

# SMF-4170:Criar Guia de Consulta Automaticamente com Procedimento do Atendimento Vinculado
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4170}" - SMF4170
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4170}
    Capture Screen

# SMF-4171:Criar Guia de Consulta Automaticamente sem o Procedimento do Atendimento Vinculado
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4171}" - SMF4171
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4171}
    Capture Screen

# SMF-4175:Criar Automaticamente Guia do tipo "Medicamentos"
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4175}" - SMF4175
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4175}
    Capture Screen

# SMF-4178:Criar Automaticamente Guia do tipo "SADT"
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4178}" - SMF4178
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4178}
    Capture Screen

# SMF-4180:Criar Automaticamente Guia do tipo "Materiais"
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4180}" - SMF4180
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4180}
    Capture Screen

# SMF-4181:Criar Automaticamente Guia do tipo "OPME"
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4181}" - SMF4181
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4181}
    Capture Screen

# SMF-4182:Criar Automaticamente Guia do tipo "Procedimento"
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF4182}" - SMF4182
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF4182}
    Capture Screen

# SMF-3790:Valorar Guias para Fornecedor Direto
Clicar no botão Valorizar
    Wait Until Element Is Visible              ${btnValorizar}                  30
    Click Element                              ${btnValorizar}
    Sleep                                      3
# SMF-2385:Validar a Senha de Autorização da Guia
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF2385}" - SMF2385
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF2385}

Clicar no Elemento da primeira tabela "${valSenha}"
    Log To Console                       *** Elemento da Tabela: ${valSenha}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${valSenha}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${valSenha}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Page Screenshot

Clicar no checkbox F/D
    Wait Until Element Is Visible              ${checkboxFD}                             30
    Click Element                              ${checkboxFD}
    Sleep                                      3

Excluir motivo da Pendencia "${valorPendencia}"
    Wait Until Element Is Visible    ${campoPendencia}                          26
    SeleniumLibrary.Click Element    ${campoPendencia}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoPendencia}                          ${valorPendencia}

# SMF-3817:Informar Motivo de Pendência na Guia com Sucesso
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF3817}" - SMF3817
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF3817}

Informar motivo da Pendencia "${valorPendencia}"
    Wait Until Element Is Visible    ${campoPendencia}                          120
    SeleniumLibrary.Click Element    ${campoPendencia}
    Sleep                            1
    SeleniumLibrary.Input Text       ${campoPendencia}                          ${valorPendencia}

Clicar no Elemento da primeira tabela "${tipoOPME}"
    Log To Console                       *** Elemento da Tabela: ${tipoGuiaSMF7735}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${tipoOPME}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${tipoGuiaSMF7735}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Clicar no botão Solicitar Guia Pendente
    Wait Until Element Is Visible              ${btnSolicitarGuiaPendente}                             30
    Click Element                              ${btnSolicitarGuiaPendente}
    Sleep                                      3
    Capture Screen

# SMF-7736:Editar Guias com Alteração do Tipo
Pesquisar Guia, inserir informações no campo: <Atend.> "${campoNumAtendSMF7736}" - SMF7736
    Wait Until Element Is Visible    ${GuiaXpathAtend}                          120
    SeleniumLibrary.Click Element    ${GuiaXpathAtend}
    Sleep                            1
    SeleniumLibrary.Input Text       ${GuiaXpathAtend}                          ${campoNumAtendSMF7736}

Clicar no Elemento da primeira tabela - SMF7736
    Log To Console                       *** Elemento da Tabela: ${tipoGuiaSMF7736}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${tipoOPME}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${tipoGuiaSMF7736}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                3
    Capture Screen

Alterar o tipo da Guia "${valorAlteracao}"
    Log To Console                       *** Elemento da Tabela: ${tipoGuiaAlteracao}
    Wait Until Element Is Visible        ${GuiasCssDivLinhasResultadoBusca}             10
    Sleep                                10

    ${elementoLinha}                     Pega elemento filho por texto                  ${GuiasCssDivLinhasResultadoBusca}      ${tipoOPME}
    ${textoLinha}                        SeleniumLibrary.Get Text                       ${elementoLinha}

    Log To Console                       *** Texto da linha: ${textoLinha}
    Should Contain                       ${textoLinha}                                  ${tipoGuiaAlteracao}
    SeleniumLibrary.Click Element        ${elementoLinha}
    Sleep                                1
    Wait Until Element Is Visible        ${GuiaXpathTipo}                              120
    SeleniumLibrary.Click Element        ${GuiaXpathTipo}
    SeleniumLibrary.Input Text           ${GuiaXpathTipo}                              ${valorAlteracao}
    Sleep                                3
    Capture Screen
