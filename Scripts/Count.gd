extends Node2D

# Método: int count(value: Variant) const
# Retorna o número de vezes que um elemento está no array.

var array = [1, "Dois", true, Button, [10, 10, 10], "Dois", "Dois"]

func _ready():
	print(array.count("Dois")) # 3
	print(array.count([10, 10, 10])) # 1
	print(array.count(Button)) # 1
	print(array.count(true)) # 1
