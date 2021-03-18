##################################################################################################################################
# Autor: Thiago Benites
# Decrição: Métodos para iteração com massa de dados
##################################################################################################################################
def cria_dicionario_de_dados(colunas, valores):
    dados = {}
    i = 0

    for valor in valores[0]:
        dados[colunas[i][0]] = valor
        i += 1

    return dados