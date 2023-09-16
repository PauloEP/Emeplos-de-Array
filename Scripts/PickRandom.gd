extends Node2D

# Methods: variant pick_random() const
# Retorna um valor aleatório do array.

var array: Array[int] = [1, 2, 3, 4]

func _ready():
	print(array.pick_random())  # Retorna um dos valores do array.
