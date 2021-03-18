##################################################################################################################################
# Autor: Denner Ricardo
# Decrição: Passo a passo do Tabelas de Faturamento
##################################################################################################################################
*** Settings ***
### Pages utilizadas na Suite de teste
Resource    ../2-pages/LoginPage.robot
Resource    ../2-pages/HomePage.robot
Resource    ../2-pages/TabelasDeFaturamentoPage.robot
Resource    ContextoSteps.robot

### Dados do Teste
Resource    dados/DadosTeste.robot

*** Variable ***

*** Keywords ***
Clicar no botão [PESQUISAR]
    Wait Until Element Is Visible    ${TabelasFaturamentoPesquisarBtn}                     120
    Sleep                            3
    Click Link                       ${TabelasFaturamentoPesquisarBtn}
    Capture Screen

Clicar no botão [Executar]
    Wait Until Element Is Visible    ${TabelasFaturamentoExecutarBtn}                      120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoExecutarBtn}  
    Sleep                            3
    Capture Screen    

Clicar no botão [Adicionar]
    Wait Until Element Is Visible    ${TabelasFaturamentoAdicionarBtn}                     120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoAdicionarBtn}  
    Sleep                            3
    Capture Screen 

Clicar no botão [Salvar]
    Wait Until Element Is Visible    ${TabelasFaturamentoSalvarBtn}                        120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoSalvarBtn}
    Sleep                            2
    Capture Screen  

Clicar no botão [Apagar]
    Wait Until Element Is Visible    ${TabelasFaturamentoApagarBtn}                        120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoApagarBtn}
    Sleep                            2
    Capture Screen  

#SMF-4679:Cadastrar Valor para Procedimento em Tabela de Faturamento

Usuário deverá informar o <Código da Tabela de Faturamento> "${codTabelasDeFaturamento}"
    Wait Until Element Is Visible    ${TabelasFaturamentoCodInput}         120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoCodInput}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoCodInput}         ${codTabelasDeFaturamento}
    Capture Screen
    
Clicar no botão [Procedimentos]
    Wait Until Element Is Visible    ${TabelasFaturamentoProcedimentosBtn}           120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoProcedimentosBtn}
    Sleep                            3
    Capture Screen

Usuário deverá informar a <Data de Vigência> "${dataVigencia}" 
    Wait Until Element Is Visible    ${TabelasFaturamentoDataVigenciaInput}          120
    # SeleniumLibrary.Click Element    ${TabelasFaturamentoDataVigenciaInput}
    Sleep                            3
    SeleniumLibrary.Input Text       ${TabelasFaturamentoDataVigenciaInput}          ${dataVigencia}
    Sleep                            3
    Capture Screen
    
Usuário deverá informar o campo <Procedimento> "${procedimento}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoProcedimentosClick}           120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoProcedimentosClick}
    Sleep                            5
    SeleniumLibrary.Input Text       ${TabelasFaturamentoProcedimentosInput}           ${procedimento}
    Capture Screen

Usuário deverá informar a campo <Val. Honorário>"${valHonorario}", <Val. Operac.>"${valOperacao}"
    Sleep                            1
    Wait Until Element Is Visible    ${TabelasFaturamentoValHonorarioClick}           120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoValHonorarioClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoValHonorarioInput}           ${valHonorario}

    Sleep                            1
    Wait Until Element Is Visible    ${TabelasFaturamentoValOperacaoClick}             120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoValOperacaoClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoValOperacaoInput}             ${valOperacao}
    Sleep                            1
    Capture Screen

# SMF-4680:Cadastrar Tabela de Faturamento dos tipos CH e Real
Usuário deverá informar a <Descrição da tabela> "${descricaoDaTabela}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoDescricaoDaTabelaInput}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoDescricaoDaTabelaInput}
    Sleep                            3
    SeleniumLibrary.Input Text       ${TabelasFaturamentoDescricaoDaTabelaInput}       ${descricaoDaTabela}
    Capture Screen

Selecionar no campo <Tipo> "${Tipo}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoTipoClick}           120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoTipoClick}
    Sleep                            3
    SeleniumLibrary.Input Text       ${TabelasFaturamentoTipoInput}           ${Tipo}
    Capture Screen

# SMF-4682:Cadastrar Valor para Porte de Ato Médico em Tabela de Faturamento
Clicar no botão [Portes de Ato Medico]
    Wait Until Element Is Visible    ${TabelasFaturamentoPortesAtoMedicoBtn}                     120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPortesAtoMedicoBtn}  
    Sleep                            3
    Capture Screen

Usuário deverá informar o campo <Porte do Ato Medico> "${porteDoAtoMed}"
    Sleep                            2
    SeleniumLibrary.Click Element    ${TabelasFaturamentoAdicionarBtn}
    Wait Until Element Is Visible    ${TabelasFaturamentoPorteDoAtoMedClick}         120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPorteDoAtoMedClick}
    SeleniumLibrary.Input Text       ${TabelasFaturamentoPorteDoAtoMedInput}         ${porteDoAtoMed}
    Sleep                            2
    Capture Screen

Usuário deverá informar o campo <Valor do Porte Medico> "${valorDoPorteMed}"
    Sleep                            2
    SeleniumLibrary.Click Element    ${TabelasFaturamentoAdicionarBtn}
    Wait Until Element Is Visible    ${TabelasFaturamentoValorDoPorteMedClick}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoValorDoPorteMedClick}
    SeleniumLibrary.Input Text       ${TabelasFaturamentoValorDoPorteMedInput}       ${valorDoPorteMed}
    Sleep                            2
    Capture Screen

Clicar no botão [Sair]
    Wait Until Element Is Visible    ${TabelasFaturamentoPortesAtoMedicoSairBtn}      120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPortesAtoMedicoSairBtn}  
    Sleep                            3
    Capture Screen


# SMF-4683:Cadastrar Valor para para Porte Anestésico em Tabela de Faturamento

Clicar no botão [Portes Anestesicos]
    Wait Until Element Is Visible    ${TabelasFaturamentoPortesAnestesicosBtn}                     120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPortesAnestesicosBtn}  
    Sleep                            3
    Capture Screen

Usuário deverá informar o campo <Porte> "${porte}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoPorteClick}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPorteClick}
    Sleep                            2
    SeleniumLibrary.Input Text       ${TabelasFaturamentoPorteInput}       ${porte}
    Sleep                            2
    Capture Screen

Usuário deverá informar o campo <Valor do Porte> "${valorDoPorte}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoValorDoPorteClick}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoValorDoPorteClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoValorDoPorteInput}       ${valorDoPorte}
    Sleep                            3
    Capture Screen



# SMF-4684 : Cadastrar percentual de valorização para Grupos de Procedimentos em Tabela de Faturamento

Clicar no botão [Grupo Procedimentos]
    Wait Until Element Is Visible    ${TabelasFaturamentoGrupoProcedimentosBtn}                     120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoGrupoProcedimentosBtn}  
    Sleep                            3
    Capture Screen

Usuário deverá informar o grupo de procedimento desejado no campo <Código> "${codigo}"
    Sleep                            2
    Wait Until Element Is Visible    ${TabelasFaturamentoCodigoInput}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoCodigoInput}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoCodigoInput}       ${codigo}
    Sleep                            3
    Capture Screen

Usuário deverá informar o campo <Percentual> "${percentual}"
    Sleep                            2
    SeleniumLibrary.Click Element    ${TabelasFaturamentoAdicionarBtn}
    Wait Until Element Is Visible    ${TabelasFaturamentoPercentualClick}       120
    SeleniumLibrary.Click Element    ${TabelasFaturamentoPercentualClick}
    Sleep                            1
    SeleniumLibrary.Input Text       ${TabelasFaturamentoPercentualInput}       ${percentual}
    Sleep                            3
    Capture Screen



