extends Node2D

# Método: make_read_only()
# Torna o array somente leitura, ou seja, desativa a modificação dos elementos do array. 

var array1 = [1, 2, 3]
var array2 = [1, 2, 3]

func _ready():
	array1.make_read_only()
	print(array1.is_read_only()) # True.
	print(array2.is_read_only()) # False.
