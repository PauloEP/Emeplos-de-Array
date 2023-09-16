extends Node2D

# Método: is_typed()
# Retorna verdadeiro se o array é tipado.

var array1 : Array[Vector2i] = [Vector2(32, 32), Vector2(64, 64)]
var array2 = [Vector2(32, 32), Vector2(64, 64)]

func _ready():
	print(array1.is_typed()) # True.
	print(array2.is_typed()) # False.
