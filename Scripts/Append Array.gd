extends Node2D

# Método: void append_array(array: Array)
# Adiciona outro array no final do nosso array.

var array1 = [1, 2, 3]
var array2 = [4, 5, 6]

func _ready():
	# Adiciona os elementos do array2 ao final do array1 usando o método append_array.
	array1.append_array(array2)

	# Imprime o array1 após a adição dos elementos do array2.
	print(array1) # O array1 agora contém os elementos de ambos os arrays, [1, 2, 3, 4, 5, 6].
