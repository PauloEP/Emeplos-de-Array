extends Node2D

# Método: Variant pop_front ( )
# Remove e retorna o primeiro elemento do array. Retorna nulo se o array estiver vazio, sem 
# imprimir uma mensagem de erro.
# Nota: Em arrays grandes, este método é muito mais lento que pop_back, pois reindexará todos os
# elementos do array sempre que for chamado. Quanto maior o array, mais lento será o pop_front.

var array = ["Armadura", "Manto", "Cinto", "Mochila"]

func _ready():
	array.pop_front() # Remove "Armadura"
	print(array) # Retorna ["Manto", "Cinto", "Mochila"]
