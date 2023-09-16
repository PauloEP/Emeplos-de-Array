extends Node2D

# Método: void erase(value: Variant)
# Remove o elemento do array atravéz do valor. Se o valor não existir, 
# nada acontece. Para remover um elemento por index, use o remove_at().

var array1 = [1, 2, 3, 4]
var array2 = ["Pistola", "Bazooka", "Escopeta"]
var array3 = [[30,30], [Vector2(30,30)]]

func _ready():
	array1.erase(4)
	print(array1) # [1, 2, 3]

	array2.erase("Escopeta")
	print(array2) # ["Pistola", "Bazooka"]

	array3.erase([Vector2(30,30)])
	print(array3) # [[30,30]]
