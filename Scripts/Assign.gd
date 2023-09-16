extends Node2D

# Método: void assign(array: Array)
# É usado para atribuir elementos de outro array no array atual, redimensionando-o para coincidir
# com o tamanho do array fornecido.

var array1 = [2, 5, 10]
var array2 = [11, 13, 5, 2, 14, 18]

func _ready():
	array1.assign(array2)
	print(array1) # Retorna [11, 13, 5, 2, 14, 18]

	#array2.assign(array1) # Atribui os elementos do array2 ao array1.
	#print(array2) # [2, 5, 10] # Imprime o array2 após a atribuição.
