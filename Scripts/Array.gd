extends Node2D

# O que é Array?
# Array é uma estrutura de dados que armazena uma sequência ordenada de elementos, como ints
# floats, strings e objetos mais complexos. Os elementos são acessados por índices(index) numéricos, começando
# em 0. Índices negativos podem ser usados para acessar elementos a partir do final do array, simplificando 
# o acesso aos elementos mais recentes.

# Declaramos um array chamado 'array' com diversos tipos de elementos.
var array = [3, 0.7, "Torcha", Vector2(1, 3)]
# Vamos entender como acessar elementos dentro deste array, tanto com índices positivos quanto negativos.
func _ready():
	# Primeiro, vamos imprimir o primeiro elemento do array (índice 0).
	print(array[0])  # Isso imprimirá 3.

	# Em seguida, imprimir o terceiro elemento do array (índice 2).
	print(array[2])  # Isso imprimirá "Torcha".

	# Agora, vamos imprimir o último elemento do array (índice -1).
	print(array[-1])  # Isso imprimirá Vector2(1, 3).

	# print(array[4])
	# Se tentarmos imprimir um elemento que não existe (índice 4), ocorrerá um erro.

	# print(array[-5])
	# Da mesma forma, tentar acessar um elemento além do início do array (índice -5) também ocorrerá um erro.

	# Agora, vejamos como modificar elementos no array.
	array[2] = "Espada" # Modificamos o terceiro elemento do array para "Espada".
	print(array[2])  # Agora, isso imprimirá "Espada".

	# Imprimimos o array completo para ver a modificação.
	print(array)  # Isso imprimirá [3, 0.7, "Espada", Vector2(1, 3)].

	# Vamos dar um passo adiante e modificar o quarto elemento do array para ser um novo array de valor [100, 200, 300].
	array[3] = [100, 200, 300]
	print(array[3])  # Agora, isso imprimirá [100, 200, 300].

	# Para acessar elementos dentro deste novo array, usamos uma indexação adicional.
	# Aqui, imprimimos o primeiro elemento do quarto elemento do array.
	print(array[3][0])  # Isso imprimirá 100.

	# O mesmo princípio se aplica para os outros elementos deste array interno.
	print(array[3][1])  # Isso imprimirá 200.
	print(array[3][2])  # Isso imprimirá 300.

# Para mais informações, consulte a documentação do Godot.
