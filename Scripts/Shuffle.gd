extends Node2D

# Methods: void shuffle ( )
# Embaralha o array de forma que os itens tenham uma ordem aleatória. Este método usa o gerador 
# global de números aleatórios comum a métodos como @GlobalScope.randi. Chame @GlobalScope.randomize
# para garantir que uma nova semente será usada a cada vez se você quiser embaralhamento não reproduzível.

var array = [1, 2, 3, 4, 5]

func _ready():
	array.shuffle()
	print(array) # Retorna com os elementos aleatórios no array.

	randomize() # Chama o @GlobalScope.randomize
	# Gera um número inteiro aleatório
	var random_integer = randi() # Randomiza com @GlobalScope.randi.
	print(random_integer) # Retorna numeros aleatórios.
