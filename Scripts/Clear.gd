extends Node2D

# Método: void clear()
# Limpa o array.

var array = [10, 30, 60, "32", true]

func _ready():
	array.clear()
	print(array) # []
