import random
def bubbleSort(array):
    length = len(array) -1

    #Bucle para las pasadas
    for i in range (0, length):
        #comparaciones e intercambios
        for j in range (0, length):
            if array[ j ] > array [ j + 1 ]:
                aux = array [ j ]
                array[ j ] = array [ j + 1 ]
                array[ j + 1 ] = aux

    return array


scores = random.sample(range(5000000), 5000000)

print("Lista de números")

print(scores)

print("\nLista de números ascendentes:")
print(bubbleSort(scores))
