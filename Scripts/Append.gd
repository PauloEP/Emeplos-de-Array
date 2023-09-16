extends Node2D

# Método: void append(value: Variant)
# Adiciona um elemento no final do array. 

var itemsRPG = [
	"Espada Flamejante",
	"Poção Éter"
	]

func _ready():
	itemsRPG.append("Elmo de Ouro") # Adiciona o "Elmo de Ouro" no array.
	print(itemsRPG) # O array agora é ["Espada Flamejante", "Poção Éter", "Elmo de Ouro"].
	itemsRPG.append("Espada Flamejante") # Adiciona outra "Espada Flamejante" ao array.
	print(itemsRPG) # O array agora é ["Espada Flamejante", "Poção Éter", "Elmo de Ouro","Espada Flamejante"].
