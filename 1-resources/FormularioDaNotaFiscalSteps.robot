##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: 
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/FormularioDaNotaFiscalPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${FormularioDaNotaFiscalPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalExecutarBtn}  
    Sleep                            4
    Capture Screen    

Clicar no botão [Adicionar]
    Sleep                            5
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalApagarBtn}                        120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalApagarBtn}
    Sleep                            2
    Capture Screen  

Usuário deverá informar o <Código> "${codigo}" 
    Sleep                            2
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalCodigoInput}         120
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalCodigoInput}         ${codigo}
    Capture Screen

Usuário deverá informar o <Descrição> "${descricao}"
    Sleep                            2
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalDescricaoClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalDescricaoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalDescricaoInput}         ${descricao}
    Capture Screen

Usuário deverá informar o <Visualizar este formulário na NF avulsa?> "${visualizarFormulario}"
    Sleep                            2
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalVisualizarFormularioClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalVisualizarFormularioClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalVisualizarFormularioInput}         ${visualizarFormulario}
    Capture Screen

Usuário deverá informar o <Convênio> "${convenio}", <Paciente> "${paciente}"
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalConvenioClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalConvenioClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalConvenioInput}         ${convenio}
    Capture Screen

    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalPacienteClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalPacienteClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalPacienteInput}         ${paciente}
    Capture Screen

Usuário deverá informar o <Nome do Relatório para Impressão do Recibo do Paciente> "${nomeDoRelatorio}"
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalNomeDoRelatorioClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalNomeDoRelatorioClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalNomeDoRelatorioInput}         ${nomeDoRelatorio}
    Capture Screen

Usuário deverá informar o <Número Sequencial da Nota Fiscal> "${numeroSequencial}", <Tipo de RPS> "${tipoRPS}", <Sequencial da NF. De> "${sequencialDaNF}"
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalNumeroSequencialClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalNumeroSequencialClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalNumeroSequencialInput}         ${numeroSequencial}
    Capture Screen
    
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalTipoRPSClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalTipoRPSClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalTipoRPSInput}         ${tipoRPS}
    Capture Screen

    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalSequencialDaNFClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalSequencialDaNFClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalSequencialDaNFInput}         ${sequencialDaNF}
    Capture Screen
    

Usuário deverá informar o <Até> "${ate}", <Série> "${serie}", <AIDF> "${aidf}"
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalAteClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalAteClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalAteInput}         ${ate}
    Capture Screen
    
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalSerieClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalSerieClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalSerieInput}         ${serie}
    Capture Screen

    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalAidfClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalAidfClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalAidfInput}         ${aidf}
    Capture Screen

Usuário deverá informar o <Validade> "${validade}", <Observação> "${observacao}"
    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalValidadeClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalValidadeClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalValidadeInput}         ${validade}
    Capture Screen

    Sleep                            4
    Wait Until Element Is Visible    ${FormularioDaNotaFiscalObservacaoClick}         120
    SeleniumLibrary.Click Element    ${FormularioDaNotaFiscalObservacaoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${FormularioDaNotaFiscalObservacaoInput}         ${observacao}
    Capture Screen