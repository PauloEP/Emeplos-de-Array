extends Node2D

# Methods: variant max() const
# Retorna o valor máximo contido na matriz se todos os elementos forem de tipos comparáveis.
# Se os elementos não puderem ser comparados, será retornado nulo.
# Para encontrar o valor máximo usando um comparador personalizado, você pode usar o "reduce". 
# Neste exemplo, cada elemento do array é verificado e o primeiro valor máximo é retornado:

var array = [Vector2(0, 1), Vector2(2, 0), Vector2(1, 1), Vector2(1, 0), Vector2(0, 2)]

func _ready():
	print(array.max()) # (2, 0)
	# Neste exemplo, nós comparamos o comprimento.
	print(array.reduce(func(_max, _val): return _val if is_length_greater(_val, _max) else _max)) # (2, 0)

func is_length_greater(a, b):
	return a.length() > b.length()
