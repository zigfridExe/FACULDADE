def CalculoSalario():
    imposto = 27.5
    while imposto > 0.:
        salario = int(input('Qual o seu salario? '))
        imposto = input('Imposto ou (s) sair: ')
        if not imposto:
            imposto = 27.5
        elif imposto == 's':
            print('Encerrando Programa')
            break
        else:
            imposto = float(imposto)
        print('Valor final: {}'.format(salario - (salario * imposto * 0.01)))



CalculoSalario()
