extends Node2D

# Método: get_typed_class_name()
# Retorna um nome de classe de um Array do tipo @GlobalScope.TYPE_OBJECT.
var array : Array[Button] = [Button.new(), Button.new(), Button.new()]

func _ready():
	print(array.get_typed_class_name()) # Button
	print(array.get_typed_builtin()) # 24
