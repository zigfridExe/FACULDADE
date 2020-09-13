salario = int(input('Qual o seu salário: '))
imposto = input('Quanto de imposto vc pagar: ')
if not imposto:
    imposto = 27.5
else:
    imposto = float(imposto)
sal = salario - (salario * (imposto*0.01))
print(sal)

salario = int(input('Qual o seu salario: '))
imposto = input('Quanto de imposto: ')
if not imposto:
    imposto = 27.5
else:
    imposto = float(imposto)
sal = salario - (salario * imposto) / imposto
print(sal, salario, imposto)