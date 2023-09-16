extends Node2D

# Método: Array filter(method: Callable)
# Filtra elementos de um array com base em um critério definido por uma função (Callable).
# Ele cria um novo array contendo apenas os elementos para os quais a função retornou verdadeiro.
func _ready():
	print([1, 2, 3].filter(remove_1)) # [2, 3].
	print([1, 2, 3].filter(func(number): return number != 1)) # [2, 3] Mesmo método só que lambda.

func remove_1(number):
	return number != 1
