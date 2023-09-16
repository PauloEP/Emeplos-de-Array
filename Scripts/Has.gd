extends Node2D

# Método: has(value: Variant)
# Retorna true se o array contém o valor dado. Isto é equivalente a usar o "in" operator.

var bainha = ["Espada", 3, "Cinto", 19]

func _ready():
	print(["Cajado", "Manto"].has("Manto")) # True.
	
	if "Espada" in bainha:
		print("Tem Espada na bainha") # Tem Espada na bainha.
	else:
		print("Não tem")
	
	if bainha.has("Cajado"):
		print("Tem Cajado na bainha")
	else:
		print("Não tem") # Não tem.
