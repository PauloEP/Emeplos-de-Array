extends Node2D

# Método: void remove_at ( int position )
# Remove um elemento do array por index. Se o index não existir no array, nada acontece. Para remover
# um elemento pesquisando seu valor, use erase.
# Nota: Este método atua no local e não retorna um valor.
# Nota: Em arrays grandes, este método será mais lento se o elemento removido estiver próximo ao início
# do array (índice 0). Isso ocorre porque todos os elementos colocados após o elemento removido devem
# ser reindexados.
# Nota: a posição não pode ser negativa. Para remover um elemento relativo ao final do array,
# use arr.remove_at(arr.size() - (i + 1)). Para remover o último elemento do array sem retornar o valor,
# use arr.resize(arr.size() - 1).

var array = ["Armadura", "Manto", "Cinto", "Mochila"]

func _ready():
	array.remove_at(2) # Remove index 2 "Cinto"
	print(array) # ["Armadura", "Manto", "Mochila"]
