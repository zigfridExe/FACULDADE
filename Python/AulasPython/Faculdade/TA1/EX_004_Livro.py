# usando equações aritmeticas e convertendo str em int

a = 2
b = 0.5
c = 1
x = input("Digite o valor de x: ")
x = int(x)
y = a * x ** 2 + b * x + c

print(f"O resultado de y para x = {x} é {y}.")
print(type(a))
print(type(b))
print(type(c))
print(type(x))

# subindo o nivel
# tipo(a, b, c, x, y)
# def tipo(*valores):
#     for i in valores:
#         print(type(i))