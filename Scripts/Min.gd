extends Node2D

# Methods: variant min() const
# Retorna o valor mínimo contido na matriz se todos os elementos forem de tipos comparáveis.
# Se os elementos não puderem ser comparados, será retornado nulo.

var array = [Vector2(0, 1), Vector2(2, 0), Vector2(1, 1), Vector2(1, 0), Vector2(0, 2)]

func _ready():
	print(array.min()) # Retorna (2, 0)
