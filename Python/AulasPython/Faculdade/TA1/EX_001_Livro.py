# uso de input e vareaveis

c = 200 # valor da constante

# Função para captura o mês que o cliente digitar
mes = input("Digite o mês que deseja saber o resultado: ")
# Não esqueça de converter para numérico o valor captura pela função input()
mes = int(mes)
# Equação do primeiro grau, também chamada função do primeiro grau ou de função linear.
r = c * mes
# Impressão do resultado usando string interpolada "f-strings" (PEP 498)
print('A quantidade de peças para o mês {} será {}'.format(mes, r))