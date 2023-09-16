extends Node2D

# Método: find(what: Variant, from: int = 0)
# Procura no array1 por um valor e retorna a index do valor. Returna -1 se a index não é achada.
# Opcionalmente, o index de pesquisa inicial pode ser passado.
var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var array2 = ["Escudo", "Armadura", "Botas", "Capacete", "Luvas"]

func _ready():
	print(array1.find(4)) # 3
	# Neste exemplo, a busca começará a partir da quarta posição do array1, onde o valor é 4 
	# (já que os index em GDScript começam em 0). A função array1.find() percorrerá o array1 a partir
	# desse ponto em busca do valor 7. Se o valor 7 for encontrado, a função retornará o index onde 
	# o 7 foi encontrado, caso contrário, retornará -1.
	print(array1.find(7, 3)) # 6
	print(array2.find("Capa")) # -1
