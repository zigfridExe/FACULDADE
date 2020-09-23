# programa de calculadora
resultado = 0


def calcular(num1, num2):
    if operador == '+':
        r = num1 + num2
        return r
    elif operador == '-':
        r = num1 - num2
        return r
    elif operador == '*':
        r = num1 - num2
        return r
    elif operador == '/':
        r = num1 / num2
        return r
    else:
        print('Operador desconhecido')
        print(operador)

while resultado == 0:
    print('========PROGRAMA DE CALCULADORA=======')
    operador = input('Digite o operador: ')
    num1 = int(input('Digite o primeiro valor: '))
    num2 = int(input('Digite o segundo valor: '))

    resultado = calcular(num1, num2)
    print(f'Resultado é {resultado}')
    resultado = 0

