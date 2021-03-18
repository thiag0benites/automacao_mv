#################################################################################################################################################################
# Autor: Letícia Andrade
# Decrição: Cadastro de Procedimentos
#################################################################################################################################################################
# Execução:
# chrome:  robot -v browser:chrome -d ./5-results "3-tests\Faturamento de convenio e particulares\Importações\Importação do SIMPRO/ImportacaoDadosDoSIMPRO.robot"
# firefox: robot -v browser:firefox -d ./5-results "3-tests\Faturamento de convenio e particulares\Importações\Importação do SIMPRO/ImportacaoDadosDoSIMPRO.robot"
#################################################################################################################################################################

*** Settings ***
### Keywords personalizadas para os testes
Resource            ../../../../1-resources/bd/BancoDados.robot
Resource            ../../../../1-resources/ImportacaoDadosDoSIMPROSteps.robot
# Resource            ../../../../1-resources/dados/DadosTeste.robot

### Inicia/fecha sessão do navegador por suite de teste
# Suite Setup       Nova sessão
# Suite Teardown    Encerra sessão
### Inicia/fecha sessão do navegador por cenario de teste
Test Setup          Nova sessão
Test Teardown       Encerra sessão

*** Variable ***
# Suite registrada no gerenciador de dados
${suite}            fat_import_dados_simpro
# Recebe dados do gerenciador
${dados}

*** Test Case ***
# Escrita no estilo BDD
# SMF-5185: Importar Dados SIMPRO com campo "vazio"
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Importações>Importação do SIMPRO>Dados"
#     ### Os outros passos já vem marcados por default
#     O usuário deverá clicar no botão Importar

# SMF-5184:Consultar Importação Dados SIMPRO por data inexistente
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Importações>Importação do SIMPRO>Dados"
#     O usuário deverá clicar no botão Pesquisar
#     Preencher o campo data com um valor Inválido
#     Clicar no botão executar Pesquisa

# SMF-5183: Consultar Importação Dados SIMPRO por data
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Importações>Importação do SIMPRO>Dados"
#     O usuário deverá clicar no botão Pesquisar
#     Realizar o preenchimento do campo data com um valor válido
#     Clicar no botão executar Pesquisa

# SMF-5182:Cancelar a importação dos Dados SIMPRO
#     Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Importações>Importação do SIMPRO>Dados"
#     Informar local de Importação do arquivo
#     Usuário deverá informar no campo <Vigência> a data de vigência a serem importados. Será exibida automaticamente a data atual
#     Usuário deverá informar qual o tipo de arquivo será importado através do radiobox <Valor de fabrica> ou <Valor do consumidor>
#     Usuário deverá clicar no botão [Cancelar]

# robot -v browser:chrome -t "SMF-5181:Importar Dados SIMPRO" -d ./5-results/SMF-5181 "3-tests\Faturamento de convenio e particulares\Importações\Importação do SIMPRO/ImportacaoDadosDoSIMPRO.robot"
SMF-5181:Importar Dados SIMPRO
    Acessar a tela "Faturamento>Faturamento de Convênios e Particulares>Importações>Importação do SIMPRO>Dados"
    Informar local de Importação do arquivo
    Preencher campo data de vigência
    Clicar no raddioButton
    O usuário deverá clicar no botão Importar