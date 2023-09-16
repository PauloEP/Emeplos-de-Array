extends Node2D

# Método: back()
# Retorna o ultimo elemento do array. Printa error e retorna null se o array estiver vazio.

var itemsRPG = [
	"Espada Excalibur",
	"Poção Cura",
	"Armadura Dragão",
	"Varinha Mago",
	"Anel Invisibilidade",
	"Elixir Força"
	]

func _ready():
	print(itemsRPG.back()) # Retorna Elixir Força
