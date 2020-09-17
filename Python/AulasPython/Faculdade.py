salario = int(input('Qual o seu salário: '))
print('Ganha bem em filho!!')
imposto = input('Quanto de imposto vc pagar: ')
print('Xiii ta fudido')
if not imposto:
    imposto = 27.5
else:
    imposto = float(imposto)
sal = salario - (salario * (imposto*0.01))
print(sal)