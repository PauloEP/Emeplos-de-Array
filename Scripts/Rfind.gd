extends Node2D

# Método: int rfind ( Variant what, int from=-1 ) const
# Pesquisa o array na ordem inversa. Opcionalmente, um index de início de pesquisa pode ser
# passado. Se negativo, o índice inicial é considerado relativo ao final da matriz.

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]

func _ready():
	print(array.rfind(4)) # 3
	print(array.rfind(3, 9)) # 2
