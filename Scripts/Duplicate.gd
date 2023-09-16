extends Node2D

# Método: duplicate(deep: bool = false)
# Retorna a cópia do array.

var array1 = [1, 2]
var array2 = [3, 4]

func _ready():
	array2 = array1.duplicate()
	print(array2) # [1,2]
