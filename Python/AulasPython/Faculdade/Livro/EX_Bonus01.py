# programa para calculo de IMC

peso = float(input('Qual o seu peso? '))
altura: float = float(input('Qual a sua altura? '))

IMC = peso / (altura * altura)
round(IMC)
if IMC <= 18.5:
    print(f'Seu IMC é {IMC:.2f} você está Abaixo')
elif IMC <= 24.9:
    print(f'Seu IMC é {IMC:.2f}, seu peso está normal')
elif IMC <= 29.9:
    print(f'Seu IMC é {IMC:.2f} você está com sobrepeso')
elif IMC <= 34.9:
    print(f'Seu IMC é {IMC:.2f} você está com obesidade em 1º grau')
elif IMC <= 39.9:
    print(f'Seu IMC é {IMC:.2f} você está com obesidade em 2º grau')
else:
    print(f'Seu IMC é {IMC:.2f} você está com obesidade em 3º grau')

print('FIM DO PROGRAMA')