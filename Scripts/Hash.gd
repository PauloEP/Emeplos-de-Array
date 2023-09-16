extends Node2D

# Método: hash()
# Retorna um valor inteiro de 32 bits que representa o array e seu conteúdo.
# Esse hash é uma representação numérica única dos elementos contidos no array, permitindo que
# você compare arrays de maneira eficiente.

var array = [1, 2, 3, 4, 5]

func _ready():
	var hashValue = array.hash()
	print("O hash do array é: ", hashValue) # O hash do array é: 922487137
