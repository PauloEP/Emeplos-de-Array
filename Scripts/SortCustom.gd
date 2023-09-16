extends Node2D

# Método: void sort_custom ( Callable func )
# Classifica o array usando um método personalizado. O método personalizado recebe dois argumentos
# (um par de elementos do array) e deve retornar verdadeiro ou falso. Para dois elementos a e b, se
# o método fornecido retornar verdadeiro, o elemento b estará após o elemento a no array.
# Nota: O algoritmo de classificação usado não é estável. Isso significa que valores considerados 
# iguais podem ter sua ordem alterada ao utilizar sort_custom.
# Nota: Você não pode randomizar o valor de retorno porque o algoritmo heapsort espera um resultado
# determinístico. Randomizar o valor de retorno resultará em comportamento inesperado.	

var my_items = [[5, "Potato"], [9, "Rice"], [4, "Tomato"]]

func _ready():
	my_items.sort_custom(sort_ascending)
	print(my_items) # [[4, Tomato], [5, Potato], [9, Rice]].

	# Descendente, versão lambda.
	my_items.sort_custom(func(a, b): return a[0] > b[0])
	print(my_items) # [[9, Rice], [5, Potato], [4, Tomato]].

func sort_ascending(a, b):
	if a[0] < b[0]:
		return true
	return false
