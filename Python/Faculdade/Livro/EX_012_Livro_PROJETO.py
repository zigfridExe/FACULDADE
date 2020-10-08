# Função de Calculo de valores
# Itens da reuniao
# O valor do produto (obrigatório).
# A quantidade do produto (obrigatório).
# A moeda em que deve ser feito o cálculo (obrigatório, sendo padrão o real).
# A porcentagem do desconto que será concedida na compra (opcional).
# A porcentagem de acréscimo, que depende da forma de pagamento (opcional).

# Valor do Dolar R$5,00
# Valor do Euro 5,70

def calcular_valor(valor_prod, qtde, moeda="real", desconto=None, acrescimo=None):
    v_bruto = valor_prod * qtde

    if desconto:
        v_liquido = v_bruto - (v_bruto * (desconto / 100))
    elif acrescimo:
        v_liquido = v_bruto + (v_bruto * (acrescimo / 100))
    else:
        v_liquido = v_bruto

    if moeda == 'real':
        return v_liquido
    elif moeda == 'dolar':
        return v_liquido * 5
    elif moeda == 'euro':
        return v_liquido * 5.7
    else:
        print("Moeda não cadastrada!")
        return 0


valor_a_pagar = calcular_valor(valor_prod=32, qtde=5, desconto=5)
print(f'O valor final da conta é {valor_a_pagar}')