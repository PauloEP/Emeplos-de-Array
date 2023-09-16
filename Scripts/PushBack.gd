extends Node2D

# Methods: void push_back ( Variant value )
# Acrescenta um elemento no final do array.

var array = ["Armadura", "Manto", "Cinto", "Mochila"]

func _ready():
	array.push_back("Botas") # Acrescenta "Botas" no final do array
	print(array) # ["Armadura", "Manto", "Cinto", "Mochila", "Botas"]
