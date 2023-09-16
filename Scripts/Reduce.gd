extends Node2D

# Método: Variant reduce ( Callable method, Variant accum=null ) const
# Chama o Callable fornecido para cada elemento no array e acumula o resultado acumuladamente.
# O método que pode ser chamado recebe dois argumentos: o valor atual de accum e o elemento atual 
# do array. Se accum for nulo (valor padrão), a iteração começará a partir do segundo elemento,
# sendo o primeiro usado como valor inicial de accum.

func _ready():
	print([1, 2, 3].reduce(sum, 10)) # 16.
	print([1, 2, 3].reduce(func(accum, number): return accum + number, 10)) # 16. Usando lambda.

func sum(accum, number):
	return accum + number
