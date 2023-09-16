extends Node2D

# Método: insert(position: int, value: Variant)
# Insere um novo elemento em uma determinada posição do array. A posição deve ser válida ou
# estar no final do array (pos == size()).
# Nota: Este método atua no local e não retorna um valor.
# Nota²: Em arrays grandes, este método será mais lento se o elemento inserido estiver próximo
# ao início do array (index 0). Isso ocorre porque todos os elementos colocados após o 
# elemento recém-inserido devem ser reindexados.

var array = [1, 2, 3, 4]
var newValue = 5

func _ready():
	array.insert(2, newValue)
	print(array) # [1, 2, 5, 3, 4]
