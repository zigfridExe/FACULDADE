# ESTRUTURAS DE REPETIÇÃO WHILE
print('================Programa 1================')
x = 0
while x <= 10:
    print(x)
    x = x + 1
print('================Programa 2================')
numero = 1
while numero != 0:
    numero = int(input('Digite um Numero ou s para sair: '))
    if numero % 2 == 0:
        print('Numero Par!')
    else:
        print('Numero Impar')
