extends Node2D

# Methods: void push_front ( Variant value )
# Acrescenta um elemento no início do array.
# Nota: Em arrays grandes, este método é muito mais lento que push_back, pois reindexará todos
# os elementos do array toda vez que for chamado. Quanto maior o array, mais lento será o push_front.

var array = ["Armadura", "Manto", "Cinto", "Mochila"]

func _ready():
	array.push_front("Botas") # Acrescenta "Botas" no inicio do array.
	print(array) # [ "Botas", "Armadura", "Manto", "Cinto", "Mochila"]
