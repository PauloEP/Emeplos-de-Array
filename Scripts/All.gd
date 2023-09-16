extends Node2D

# Método: bool all(method: Callable) const
# É usada para verificar se "TODOS" os elementos de um Array atendem a uma determinada condição.
# Ele retorna true se todos os elementos atenderem à condição e false se pelo menos um dos 
# elemento não atender à condição.

# Criamos um array com alguns números.
var array = [1, 2, 3, 4, 5]

func _ready():
	# Usamos o método all() para verificar se todos os elementos do array atendem à condição de serem maiores que 5.
	print(array.all(_maiorQue5))  # Neste caso, a saída será True porque todos os elementos são maiores que 5.
	# Usamos o método all() com uma função lambda para verificar se todos os elementos em um novo array atendem à condição de serem maiores que 5.
	print([6, 10, 6].all(func(_numeros): return _numeros > 5)) # A saída será True porque todos os elementos são maiores que 5.
	print([].all(_maiorQue5)) # True
	# No caso de um array vazio, a função all não encontra nenhum elemento que não atenda à condição,
	# portanto, retorna true porque todos os elementos (zero, no caso de um array vazio) são considerados válidos.
	# Isso é consistente com a lógica de que uma afirmação universalmente quantificada é verdadeira se não houver contraexemplos.

func _maiorQue5(numeros): # Função que verifica se um número é maior que 5.
	return numeros > 5
