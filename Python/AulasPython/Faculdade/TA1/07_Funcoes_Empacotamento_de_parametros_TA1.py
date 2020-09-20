def soma(*valores):
    r = 0
    for i in valores:
        r += i
        return r


v1 = soma(3, 9)
print(v1)
v2 = soma(1, 2, 3, 4)
print(v2)
