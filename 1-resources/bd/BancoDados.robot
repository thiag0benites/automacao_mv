*** Settings ***
### Configurações iniciais 
Resource            ../../Config.robot
Library             ../../7-libraries/bdLibrary/dados.py 

*** Variables ***
${dbname}                mv_automacao
${dbuser}                root
${dbpasswd}     
${dbhost}                192.168.1.150
${dbport}                3306

# ${dbname}                dbmassateste
# ${dbuser}                usermassateste
# ${dbpasswd}              wati@2021
# ${dbhost}                db4free.net
# ${dbport}                3306

@{queryResults}

# ${caminhoScripts}        D:/WATI/BD/mysqlScripts

# *** Test Cases ***
# SELECIONA TUDO
#     Seleciona tudo tabela "massa"
    

*** Keywords ***
Conectar ao Banco de Dados

    ## MySQL
    # Connect to Database      dbapiModuleName=PyMySQL     dbName=robot        dbUsername=root        dbPassword=${senha}        dbHost=localhost        dbPort=3306
    Connect To Database     pymysql     ${dbname}       ${dbuser}       ${dbpasswd}     ${dbhost}       ${dbport}

Desconectar do Banco de Dados
    Disconnect From Database

Seleciona toda massa de dados da tabela "${tabela}"
    @{queryResults}        Query        SELECT * FROM ${tabela}
    Log Many               @{queryResults}

# Seleciona massa de dados do caso de teste "${filtro}"
#     Conectar ao Banco de Dados
#     @{queryResults}        Query        SELECT * FROM massa WHERE STATUS = 'PRONTA' AND ID_CT = '${filtro}'
#     Desconectar do Banco de Dados
#     [Return]               @{queryResults}

Seleciona massa de dados na suite "${suite}" do caso de teste "${filtro}"
    Conectar ao Banco de Dados
    @{colunas}            Description                 SELECT * FROM ${suite}
    @{valores}            Query                       SELECT * FROM ${suite} WHERE STATUS = 'PRONTA' AND ID_CT = '${filtro}' LIMIT 1
    ${dados}              Cria Dicionario De Dados    ${colunas}    ${valores}
    Desconectar do Banco de Dados
    [Return]              ${dados}

Altera massa de dados da "${suite}", linha "${id_linha}", coluna "${coluna}", valor "${valor}"
    Conectar ao Banco de Dados
    Execute Sql String        UPDATE ${suite} SET ${coluna} = '${valor}' WHERE id = '${id_linha}'
    Desconectar do Banco de Dados