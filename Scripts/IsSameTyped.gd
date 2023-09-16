extends Node2D

# Método: is_same_typed(array: Array)
# Retorna verdadeiro se um array é do mesmo tipo que o outro.

var array1 : Array[float] = [0.2, 0.1, -3.9]
var array2 : Array[float] = [2.6, -1.8, 5.0]

func _ready():
	print(array1.is_same_typed(array2)) # True.
