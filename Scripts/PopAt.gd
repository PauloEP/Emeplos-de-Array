extends Node2D

# Methods: Variant pop_at ( int position )
# Remove e retorna o elemento do array na posição do index. Se for negativo, a posição é 
# considerada relativa ao final do array. Deixa o array intacto e retorna nulo se o array estiver 
# vazia ou acessada fora dos limites. Uma mensagem de erro é impressa quando o array é acessado 
# fora dos limites, mas não quando o array está vazio.

var array = ["Cajado", "Arco", "Machado", "Espada"]

func _ready():
	array.pop_at(2) # Remove a index 2 "Machado"
	print(array) # "Cajado", "Arco", "Espada"]
	var findMyItem = array.find("Espada") # Pega a index que tiver o valor de "Espada"
	array.pop_at(findMyItem) # Remove a index que tiver o valor de "Espada"
	print(array) # ["Cajado", "Arco"]
