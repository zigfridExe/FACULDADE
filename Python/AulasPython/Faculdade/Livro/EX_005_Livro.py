# Calculo de imposto de renda
renda = float(input('Qual a sua renda mensal? '))

bruto = renda * 12
base = bruto / 12

if base <= 1903.99:
    imposto = 0
    aliquota = 7.5
    print('O colaborador isento')
elif base <= 2826.66:
    imposto = 142.80
    aliquota = 15
    print('O colaborador devera pagar R$142,80')
elif base <= 3751.06:
    imposto = 354.80
    aliquota = 22.5
    print('O colaborador devera pagar R$354,80')
elif base <= 4664.68:
    imposto = 636.13
    aliquota = 27.5
    print('O colaborador devera pagar R$636,13')
else:
    print('O colaborador devera pagar R$869,36')
    imposto = 869.36
    aliquota = 27.5
print(f'Salario {renda}')
print(f'Sua Aliquota {aliquota}')
print('Seu Salario descontado o imposto')
print(renda - imposto)