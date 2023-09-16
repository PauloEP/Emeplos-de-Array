extends Node2D

# Método: int bsearch(value: Variant, before: bool = true) const
# É usado para realizar uma busca em um array a fim de encontrar o index de um valor. Ou seja, ele
# encontra o index de um valor existente usando pesquisa binária. Opcionalmente, um especificador
# before pode ser passado. Se for falso, o index retornado vem depois de todas as entradas 
# existentes do valor no array.

var array = [3, 6, 9, 12]
var rpgClasses = ["Cavaleiro", "Mago", "Padre", "Arqueiro"]

func _ready():
	print(array.bsearch(12)) # Retorna 3
	print(rpgClasses.bsearch("Padre")) # Retorna 2
