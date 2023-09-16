extends Node2D

# Método: map(method: Callable)
# Chama o Callable(função/método) fornecido para cada elemento do array e retorna um novo array
# preenchido com valores retornados pelo método.
# O método que pode ser chamado deve receber um parâmetro Variant (o elemento atual da matriz) 
# e pode retornar qualquer Variant.

func _ready():
	print([1, 2, 3].map(negate)) # Prints [-1, -2, -3].
	print([1, 2, 3].map(func(number): return -number)) # Mesmo de cima, mas usando lambda.

func negate(number):
	return -number
