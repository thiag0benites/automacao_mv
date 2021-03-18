##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Impressão de Fatura 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/ImpressaoFaturaPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${ImpressaoFaturaPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${ImpressaoFaturaPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${ImpressaoFaturaExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Wait Until Element Is Visible    ${ImpressaoFaturaAdicionarBtn}                      120
    Sleep                            2
    SeleniumLibrary.Click Element    ${ImpressaoFaturaAdicionarBtn}  
    Sleep                            3
    Capture Screen 

# SMF-4739:Criar configuração de impressão das faturas para Grupos de Faturamento
Usuário deverá informar o <Código de Apresentação> "${codApresentacao}" 
    Wait Until Element Is Visible    ${ImpressaoFaturaCodApresentacaoInput}         120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaCodApresentacaoInput}
    Sleep                            1
    SeleniumLibrary.Input Text       ${ImpressaoFaturaCodApresentacaoInput}         ${codApresentacao}
    Capture Screen
    
Selecionar a aba 'Faturamento' 
    Wait Until Element Is Visible    ${ImpressaoFaturaAbaGrupoFaturamento}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaAbaGrupoFaturamento} 
    Sleep                            3 
    Capture Screen 

Selecionar a aba 'Grupo Procedimento'
    Wait Until Element Is Visible    ${ImpressaoFaturaAbaGrupoProcedimento}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaAbaGrupoProcedimento} 
    Sleep                            3 
    Capture Screen 
    
Usuário deverá selecionar o tipo de <Quebra da Fatura> "${quebraDaFatura}"
    Wait Until Element Is Visible    ${ImpressaoFaturaIdQuebraFaturaInput}           120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaIdQuebraFaturaInput}
    Sleep                            5
    SeleniumLibrary.Input Text       ${ImpressaoFaturaIdQuebraFaturaInput}          ${quebraDaFatura}
    Capture Screen

Usuário deverá selecionar no campo <Kit Separado>"${kitSeparado}", <Resumo Kit>"${resumoKit}", <Exibir logo>"${exibirLogo}"
    Wait Until Element Is Visible    ${ImpressaoFaturaIdKitSeparadoInput}           120
    Sleep                            1
    SeleniumLibrary.Click Element    ${ImpressaoFaturaIdKitSeparadoInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaIdKitSeparadoInput}           ${kitSeparado}

    Wait Until Element Is Visible    ${ImpressaoFaturaIdResumoKitInput}             120
    Sleep                            1
    SeleniumLibrary.Click Element    ${ImpressaoFaturaIdResumoKitInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaIdResumoKitInput}             ${kitSeparado}

    Wait Until Element Is Visible    ${ImpressaoFaturaIdExibirLogoInput}            120
    Sleep                            1
    SeleniumLibrary.Click Element    ${ImpressaoFaturaIdExibirLogoInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaIdExibirLogoInput}            ${kitSeparado}
    Sleep                            1
    Capture Screen

Selecionar no campo <Imprime Data/Hora>"${dataHora}" desejado para impressão da fatura
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaImprimeDataHoraClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaImprimeDataHoraClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaImprimeDataHoraInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaImprimeDataHoraInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaImprimeDataHoraInput}          ${dataHora}
    Sleep                            2
    Capture Screen

Marcar os checkbox que deseja selecionar para impressão da fatura
    Sleep                                       2          
    SeleniumLibrary.Click Element               ${ImpressaoFaturaImprimiHECheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaImprimiProcCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaImprimiFPCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaImprimiCRMCheckBox}
    Sleep                                       3  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaImprimiCPFCheckBox}
    Sleep                                       1 
    Capture Screen


Selecionar no campo <Imprime Acrescimo>"${imprimeAcrescimo}" o valor que desejado para a impressão da fatura
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaImprimiAcrescimoClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaImprimiAcrescimoClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaImprimiAcrescimoInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaImprimiAcrescimoInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaImprimiAcrescimoInput}          ${imprimeAcrescimo}
    Sleep                            2
    Capture Screen


#Grupo Procedimento
Selecionar no campo <Imprime Data/Hora>"${dataHoraProcedimento}" desejado para impressão da fatura do Grupo Procedimento
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimentoImprimeDataHoraInput}          ${dataHoraProcedimento}
    Sleep                            2
    Capture Screen

Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento
    Sleep                                       2          
    # SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimentoImprimiHECheckBox}
    # Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimentoImprimiPagoCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimentoImprimiProcCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimentoImprimiFPCheckBox}
    Sleep                                       3  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimentoImprimiPrestadorCheckBox}
    Sleep                                       1 
    Capture Screen


Selecionar no campo <Imprime Acrescimo>"${imprimeAcrescimo}" o valor que desejado para a impressão da fatura do Grupo Procedimento
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimentoImprimiAcrescimoInput}          ${imprimeAcrescimo}
    Sleep                            2
    Capture Screen


#Mais de um Código de Procedimento

Selecionar no campo <Imprime Data/Hora>"${dataHoraProcedimento}" desejado para impressão da fatura do Grupo Procedimento 2
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimento2ImprimeDataHoraInput}          ${dataHoraProcedimento}
    Sleep                            2
    Capture Screen

Marcar os checkbox que deseja selecionar para impressão da fatura do Grupo Procedimento 2
    Sleep                                       2          
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimento2ImprimiPagoCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimento2ImprimiProcCheckBox}
    Sleep                                       2  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimento2ImprimiFPCheckBox}
    Sleep                                       3  
    SeleniumLibrary.Click Element               ${ImpressaoFaturaGrupoProcedimento2ImprimiPrestadorCheckBox}
    Sleep                                       1 
    Capture Screen


Selecionar no campo <Imprime Acrescimo>"${imprimeAcrescimo}" o valor que desejado para a impressão da fatura do Grupo Procedimento 2
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoClick}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoClick}
    Sleep                            2
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoInput}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoInput}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimento2ImprimiAcrescimoInput}          ${imprimeAcrescimo}
    Sleep                            2
    Capture Screen

Selecionar Grid Grupo Procedimento
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoClickGrid}          120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoClickGrid} 
    Sleep                            3 
    Capture Screen 

Usuário deverá informar o <Código de Apresentação> já existente"${codApresentacao}"<Seq. Resumo Fatura> "${seqResumoFatura}" <Seq. Detalhe Fatura> "${seqDetalheFatura}"    
    
    Sleep                            1
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoAddCodigo}                   120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoAddCodigo}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimentoAddCodigo}                    ${codApresentacao}
    Sleep                            1

    Wait Until Element Is Visible    ${ImpressaoFaturaSalvarBtn}               120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaSalvarBtn}
    Sleep                            1
    
    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoResumoFaturaInput}            120
    Sleep                            1
    # SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoResumoFaturaClick}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimentoResumoFaturaInput}            ${seqResumoFatura}
    Sleep                            1

    Wait Until Element Is Visible    ${ImpressaoFaturaSalvarBtn}               120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaSalvarBtn}
    Sleep                            1

    Wait Until Element Is Visible    ${ImpressaoFaturaGrupoProcedimentoDetalheFaturaInput}            120
    Sleep                            1
    # SeleniumLibrary.Click Element    ${ImpressaoFaturaGrupoProcedimentoDetalheFaturaClick}
    SeleniumLibrary.Input Text       ${ImpressaoFaturaGrupoProcedimentoDetalheFaturaInput}            ${seqDetalheFatura}
    Sleep                            1
    Capture Screen                   

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${ImpressaoFaturaSalvarBtn}               120
    SeleniumLibrary.Click Element    ${ImpressaoFaturaSalvarBtn}
    Sleep                            2
    Capture Screen   
