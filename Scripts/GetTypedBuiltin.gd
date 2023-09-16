extends Node2D

# Método: get_typed_builtin()
# Retorna o tipo da Variant.Type do array de acordo com a @GlobalScope.

var array1: Array[int] = [1,2,3]
var array2 = [1,2,3]

func _ready():
	print(array1.get_typed_builtin()) # Retorna 2 pois TYPE_INT = 2
	print(array2.get_typed_builtin()) # Retorna 0 pois TYPE_NILL = 0
