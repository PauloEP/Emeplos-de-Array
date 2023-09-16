extends Node2D

# Método: get_typed_script()
# Retorna o script associado a um array digitado vinculado a um nome de classe.

var class_test_node = MyTestClass.new()
var array: Array[MyTestClass] = [class_test_node, class_test_node]
var myScript

func _ready():
	print(array.get_typed_script()) # Return <GDScript#-9223372005682707262>
	myScript = array.get_typed_script().new()
	print(myScript.hello) # Return Hola!
