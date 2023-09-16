extends Node2D

# Método: void sort ( )	
# Classifica/Organiza o array.
# Nota: O algoritmo de classificação usado não é estável. Isso significa que valores considerados 
# iguais podem ter sua ordem alterada ao utilizar o sort.
# Nota: As strings são classificadas em ordem alfabética (em oposição à ordem natural). Isto pode 
# levar a um comportamento inesperado ao classificar um array de strings que termina com uma 
# sequência de números. Considere o seguinte exemplo:

var strings = ["string1", "string2", "string10", "string11"]
var strings2 = ["string1", "string2", "string10", "string11"]

func _ready():
	strings.sort()
	print(strings) # [string1, string10, string11, string2]

	# Para realizar a classificação em ordem natural, você pode usar sort_custom com 
	# String.naturalnocasecmp_to da seguinte maneira:
	strings2.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
	print(strings2) # [string1, string2, string10, string11]
