extends Node2D

# Método: bool any(method: Callable): const
# É usada para verificar se um ou mais elementos de um Array atendem a uma determinada condição.
# Ele retorna true se todos os elementos atenderem à condição e false se pelo menos um
# elemento não atender à condição.

func _ready():
	print([6, 10, 6].any(_maiorQue5))  # True (3 elementos são válidos como `true`).
	print([4, 10, 4].any(_maiorQue5))  # True (1 elemento é valido como `true`).
	print([4, 4, 4].any(_maiorQue5))  # False (0 elementos são válidos como `true`).
	print([].any(_maiorQue5))  # False (0 elementos são válidos como `true`).
	print([6, 10, 6].any(func(_numeros): return _numeros > 5))  # True. Mesma coisa, mas usando lambda function.

func _maiorQue5(numeros): # Função que verifica se um número é maior que 5.
	return numeros > 5
