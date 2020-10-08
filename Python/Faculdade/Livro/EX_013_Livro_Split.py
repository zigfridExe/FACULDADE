# Usando a blitin split para quebrar o texto
# em uma lista. linhas 09 10 11
# E usando o split para quebrar uma data e separa
# las em vareaveis. linha 12


def converter_mes_para_extenso(data):

    mes = '''Janeiro Fevereiro Março Abril Maio
        Junho Julho Agosto Setembro Outubro Novembro
        Dezembro'''.split()
    d, m, a = data.split('/')
    mes_extenso = mes[int(m) - 1] # O mês 1, estará na posição 0
    return f'{d} de {mes_extenso} de {a}'


print(converter_mes_para_extenso('10/01/2021'))
