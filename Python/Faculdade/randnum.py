def selection_sort(lista):
    n = len(lista)
    for j in range(n):
        min_index = (j, n)
        for i in range(j, n - 1)