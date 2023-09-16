extends Node2D

# Methods: int resize (int size)
# Redimensiona o array para conter um número diferente de elementos. Se o tamanho do array for menor,
# os elementos serão limpos; se for maior, os novos elementos serão nulos.

var array = [1, 2, 3, 4]

func _ready():
	array.resize(10)
	print(array) # [1, 2, 3, 4, <null>, <null>, <null>, <null>, <null>, <null>]
	array.resize(1)
	print(array) # [1]
