extends Node2D

# Methods: void reverse ( )
# Inverte a ordem dos elementos do array.

var array = [1, 2, 3, 4]

func _ready():
	array.reverse()
	print(array)
