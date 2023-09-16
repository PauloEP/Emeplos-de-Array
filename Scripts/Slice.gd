extends Node2D

# Método: Array slice ( int begin, int end=2147483647, int step=1, bool deep=false ) const
# Retorna a fatia/repartição do Array, do início (inclusivo) ao fim (exclusivo), como um novo Array.
# O valor absoluto de início e fim será limitado ao tamanho do array, então o valor padrão para 
# final faz com que ele seja fatiado no tamanho do array por padrão (ou seja, arr.slice(1) é uma 
# abreviação para arr.slice(1, arr.size())).
# Se o início ou o fim forem negativos, eles serão relativos ao final da matriz (ou seja, arr.slice(0, -2)
# é uma abreviação de arr.slice(0, arr.size() - 2)).
# Se especificado, step é o índice relativo entre os elementos de origem. Pode ser negativo, então
# o início deve ser maior que o fim. Por exemplo, [0, 1, 2, 3, 4, 5].slice(5, 1, -2) retorna [5, 3].
# Se deep for verdadeiro, cada elemento será copiado por valor e não por referência.

var array = ["Espada", "Escudo", "Lança", "Faca", "Maça"]

func _ready():
	print(array.slice(1, 3)) # ["Escudo", "Lança"]
