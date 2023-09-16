extends Node2D

# Método: int bsearch_custom(value: Variant, func: Callable, before: bool = true) const
# A função bsearch_custom() é usada para encontrar o índice de um valor existente em um array 
# (ou o índice de inserção que mantém a ordem de classificação, caso o valor ainda não esteja
# presente no array) usando uma busca binária e um método de comparação personalizado. Ela também 
# aceita um parâmetro opcional chamado "before" (antes), que se for definido como falso, retornará o 
# índice após todas as entradas existentes do valor no array. O método de comparação personalizado 
# recebe dois argumentos (um elemento do array e o valor procurado) e deve retornar verdadeiro se o 
# primeiro argumento for menor que o segundo, e falso caso contrário.

var array = ["Um", "Dois", "Três", "Quatro"]

func _ready():
	# Chama a função bsearch_custom() no array para procurar o valor "Três".
	# Você também passa a função 'compare' para comparar os valores e 'true' para encontrar antes das ocorrências.
	var resultado = array.bsearch_custom("Três", compare, true)
	
	# Imprime o resultado da busca no console.
	print(resultado)  # Resultado esperado é 2.

# Função de comparação personalizada usada para comparar os valores durante a busca.
func compare(a, b):
	# Converte os valores em números usando a função 'cardinal_to_algebraic' e compara os números resultantes.
	return cardinal_to_algebraic(a) < cardinal_to_algebraic(b)

# Função para mapear valores de strings em números.
func cardinal_to_algebraic(a):
	match a:
		"Um":
			return 1
		"Dois":
			return 2
		"Três":
			return 3
		"Quatro":
			return 4
		_:
			return 0

#Aqui estão as partes principais do código e o que elas fazem:
#    extends Node2D: Esta linha indica que o script estende o tipo de nó Node2D, o que significa que ele está associado a um nó 2D na cena do Godot.
#    var a = ["one", "two", "three", "four"]: Isso cria uma variável a que é um array de strings contendo os valores "one", "two", "three" e "four".
#    func _ready(): Esta é uma função especial que é chamada automaticamente quando o nó está pronto para ser usado. É onde a maior parte do trabalho é realizada.
#    var result = a.bsearch_custom("three", compare, true): Aqui, você chama a função bsearch_custom() no array a para procurar o valor "three" usando a função de comparação personalizada compare(). O argumento true indica que você deseja encontrar o índice antes de todas as ocorrências do valor "three" no array. O resultado da busca é armazenado na variável result.
#    print(result): Você imprime o resultado da busca no console.
#    func compare(a, b): Esta é a função de comparação personalizada que você forneceu à função bsearch_custom(). Ela compara dois valores a e b convertendo-os em números usando a função cardinal_to_algebraic() e retorna verdadeiro se a for menor que b, caso contrário, retorna falso.
#    func cardinal_to_algebraic(a): Esta função mapeia valores de strings em números. Ela usa a instrução match para fazer isso com base nos valores "one", "two", "three" e "four". Se o valor não corresponder a nenhum desses casos, a função retorna 0.
#O resultado esperado da busca é o índice 2, já que "three" é o terceiro elemento no array. O script demonstra como usar a função bsearch_custom() no Godot GDScript com uma função de comparação personalizada.
