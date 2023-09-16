extends Node2D

# Methods: Variant pop_back ( )
# Remove e retorna o último elemento do array. Retorna nulo se o array estiver vazio, sem imprimir
# uma mensagem de erro.

var array = ["Armadura", "Manto", "Cinto", "Mochila"]

func _ready():
	array.pop_back() # Remove "Mochila"
	print(array) # ["Armadura", "Manto", "Cinto"]
