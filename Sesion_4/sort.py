import random
score = random.sample(range(5000000), 5000000)


print(f"Lista números: {score}")

score.sort()
print(f"\nLista números ascendente: {score}")

score.sort(reverse=True)
print(f"\nLista números descendente: {score}")



