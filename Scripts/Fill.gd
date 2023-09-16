extends Node2D

# Método: void fill(value: Variant)
# Preenche todos os elementos de um array com um valor especificado. Ela é útil para inicializar
# ou redefinir todos os elementos de um array para um valor padrão. 

var array = [1, 2, 3, 4, 5]

func _ready():
	array.fill(10)
	print(array) # [10, 10, 10, 10, 10]
