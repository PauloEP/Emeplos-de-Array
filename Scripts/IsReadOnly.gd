extends Node2D

# Método: is_read_only()
# É um método que permite verificar se um array é somente leitura ou não. Um array
# somente leitura é aquele que não pode ser modificado após a sua criação (constantes), o que é 
# útil em situações onde você deseja garantir a imutabilidade dos dados.

const array1: Array = [1, 2, 3]
#var array2: Array = [1, 2, 3]

func _ready():
	if array1.is_read_only():
		print("O array é somente leitura.") # O array é somente leitura.
	else:
		print("O array não é somente leitura.")
