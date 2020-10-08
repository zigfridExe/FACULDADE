# argumentos de função obrigatorio
def somar(a, b):
    return a + b


# argumento de função com valor DEFAULT
def calcular_desconto(valor, desconto=0.0):
    valor_com_desconto = valor - (valor * desconto)
    return valor_com_desconto


# argumento de função nominal
def converter_maiuscula(texto, flag_maiuscula):
    if flag_maiuscula:
        return texto.upper()
    else:
        return texto.lower()


# alrgumento de função *args
def imprimir_paramentos(*args):
    qtde_parametros = len(args)
    print(f'Quantidade de parametros = {qtde_parametros}')

    for i, valor in enumerate(args):
        print(f'Posição = {i}, valor = {valor}')


# argumentos de função **kwargs
def imprimir_paramentos2(**kwargs):
    print(f'Tipo de objeto recebido = {type(kwargs)}\n')
    qtde_parametros = len(kwargs)
    print(f'Quantidade de parâmetros = {qtde_parametros}')

    for chave, valor in kwargs.items():
        print(f'Vareavel = {chave}, valor = {valor}')

r = somar(2, 3)
print(r)

valor1 = calcular_desconto(100)
valor2 = calcular_desconto(100, 0.25)
print(f'Primeiro valor a ser pago = {valor1}')
print(f'Primeiro valor a ser pago = {valor2}')

texto = converter_maiuscula(flag_maiuscula=True, texto='João')
print(texto)

print('\nChamda 1')
imprimir_paramentos('São Paulo', 10, 23.78, 'João')

print('\nChamada 2')
imprimir_paramentos(10, 'São Paulo')

print('\nChamada 1')
imprimir_paramentos2(cidade='São Paulo', idade=33, nome='João')

print('\nChamada 2')
imprimir_paramentos2(desconto=10, valor=10)
