extends Node2D

# Methods: int size ( ) const
# Retorna o numero de elementos do array.
var array = [32, 52, 612, 34, 54]

func _ready():
	print(array.size()) # Retorna 5
