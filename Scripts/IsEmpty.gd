extends Node2D

# Método: is_empty() const
# Retorna true se o array estiver vazio.

var array = []

func _ready():
	if array.is_empty():
		print("Está vazio.") # Retorna Está vazio.
	else:
		print("Está cheio.")
