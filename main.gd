extends Node2D

# O que é array?

# Array é uma estrutura de dados fundamental que desempenha um papel essencial no armazenamento e 
# manipulação de informações. Ele é projetado para armazenar uma sequência ordenada de elementos, 
# onde esses elementos podem ser de vários tipos, incluindo int, float, strings, vectores e até
# mesmo objetos mais complexos, como nodes, botões, labels e outros.

# O conceito chave para entender os arrays é o índice(index). Os elementos em um array são acessados
#​​ por meio de index numéricos, começando a contar os elementos partir de 0. Esses index são 
# essenciais  para identificar a posição de um elemento específico dentro do array. Por exemplo, o 
# primeiro elemento em um array tem o index 0, o segundo tem o index 1 e assim por diante.

# Uma característica interessante dos arrays em GDScript é a capacidade de usar índices negativos. 
# Essa é uma funcionalidade útil para acessar elementos a partir do final do array. Por exemplo, o 
# elemento com índice -1 representa o último elemento do array, o elemento com índice -2 representa o
# penúltimo elemento e assim por diante. Isso simplifica a tarefa de acessar os elementos mais recentes
# ou finais de um array, economizando tempo e código.

# Para entender mais sobre Arrays, você pode acessar na janela dos documentos da Godot.

func _ready():
	var array = [3, 0.7, "Torcha", Vector2(1,3)]
	print(array[0]) # 3.
	print(array[2]) # "Torcha"
	print(array[-1]) # (1,3)
	#print(array[4]) # error
	#print(array[-5]) # error
	array[2] = "Espada" # Altera o array[2] = "Torcha" para "Espada"
	print(array[2]) #  "Espada"
	print(array) # [3, 0.7, "Espada", [100, 200, 300]]
	array[3] = [100,200,300] # A index 3 tem um novo valor de [100,200,300]
	print(array[3]) # [100,200,300]
	print(array[3][0]) # 100
	print(array[3][1]) # 200
	print(array[3][2]) # 300
	var array1 = ["Arco", "Flecha"]
	var array2 = ["Armadura", "Capacete"]
	print(array1 + array2) # ["Arco", "Flecha", "Armadura", "Capacete"]
	#-----------------------------------------------------------------------------------------------
	# 									Método: append(value: Variant)
	# Adiciona um elemento no final do array. 
	var array3 = [1, 2, 3]
	array3.append(10) # Adiciona o valor 10 na ultima posição do array.
	print(array3) # [1,2,3,10]
	array3.append(1) # Adiciona o valor 1 na ultima posição do array.
	print(array3) # [1,2,3,10,1]
	#-----------------------------------------------------------------------------------------------
	# 									Método: append_array(array: Array)
	# Adiciona outro array no final do nosso array.
	var array4 = [1, 2, 3]
	var array5 = [4, 5, 6]
	array4.append_array(array5) # Adiciona o array5 no array4
	print(array4) # [1, 2, 3, 4, 5, 6]
	#-----------------------------------------------------------------------------------------------
	# 									Método: assign(array: Array)
	# É usado para atribuir elementos de outro array ao array atual, redimensionando-o para coincidir
	# com o tamanho do array fornecido.
	var array6 = [2, 5, 10]
	var array7 = [11, 13, 5, 2, 14, 18]
	array6.assign(array7) # Redimensiona e atribui os elementos do array7 no array6.
	print(array6) # [11, 13, 5, 2, 14, 18]
	#array7.assign(array6) # Redimensiona e atribui os elementos do array6 no array7
	#print(array7) # [2, 5, 10]
	#-----------------------------------------------------------------------------------------------
	# 									Método: front(method: Callable)
	# Retorna o primeiro elemento do array. Imprime um erro e retorna nulo se o array estiver vazio.
	# Nota: Chamar esta função não é o mesmo que escrever array[0]. Se o array estiver vazio, o acesso
	# por index pausará a execução do projeto ao executar a partir do editor.
	var array21 = [22, 4, 71]
	print(array21.front()) # 22
	print(array21[0]) # 22
	#-----------------------------------------------------------------------------------------------
	# 									Método: back()
	# Retorna o ultimo elemento do array. Printa error e retorna null se o array estiver vazio.
	var array8 = [1, 2, 3, 4]
	print(array8.back()) # 4
	#-----------------------------------------------------------------------------------------------
	# 									Método: bsearch(value: Variant, before: bool = true)
	# É usado para realizar uma busca em um array a fim de encontrar o index de um valor. Ou seja, ele
	# encontra o index de um valor existente usando pesquisa binária. Opcionalmente, um especificador
	# before pode ser passado. Se for falso, o index retornado vem depois de todas as entradas 
	# existentes do valor no array.
	var array9 = [3, 6, 9, 12]
	print(array9.bsearch(12)) # 3
	var array10 = ["Cavaleiro", "Mago", "Padre", "Arqueiro"]
	print(array10.bsearch("Padre")) # 2
	#-----------------------------------------------------------------------------------------------
	# 									Método: clear()
	# Limpa o array.
	var array11 = [10, 30, 60, "32", true]
	array11.clear()
	print(array11) # []
	#-----------------------------------------------------------------------------------------------
	# 									Método: count(value: Variant)
	# Retorna o número de vezes que um elemento está no array.
	var array12 = [1, "Dois", true, Button, [10, 10, 10], "Dois", "Dois"]
	print(array12.count("Dois")) # 3
	print(array12.count([10, 10, 10])) # 1
	print(array12.count(Button)) # 1
	print(array12.count(true)) # 1
	#-----------------------------------------------------------------------------------------------
	# 									Método: duplicate(deep: bool = false)
	# Retorna a cópia do array.
	var array13 = [1, 2]
	var array14 = [3, 4]
	array14 = array13.duplicate()
	print(array14) # [1,2]
	#-----------------------------------------------------------------------------------------------
	# 									Método: erase(value: Variant)
	# Remove o elemento atravéz do valor no array. Se o valor não existir no array, 
	# nada acontece. Para remover um elemento por index, use o remove_at().
	var array15 = [1, 2, 3, 4]
	array15.erase(4)
	print(array15) # [1, 2, 3]
	var array16 = ["Pistola", "Bazooka", "Escopeta"]
	array16.erase("Escopeta")
	print(array16) # ["Pistola", "Bazooka"]
	var array17 = [[30,30], [Vector2(30,30)]]
	array17.erase([Vector2(30,30)])
	print(array17) # [[30,30]]
	#-----------------------------------------------------------------------------------------------
	# 									Método: fill(value: Variant)
	# Preenche todos os elementos de um array com um valor especificado. Ela é útil para inicializar
	# ou redefinir todos os elementos de um array para um valor padrão. 
	var array18 = [1, 2, 3, 4, 5]
	array18.fill(10)
	print(array18) # [10, 10, 10, 10, 10]
	#-----------------------------------------------------------------------------------------------
	# 									Método: filter(method: Callable)
	# Filtra elementos de um array com base em um critério definido por uma função (Callable).
	# Ele cria um novo array contendo apenas os elementos para os quais a função retornou verdadeiro.
	print([1, 2, 3].filter(remove_1)) # [2, 3].
	print([1, 2, 3].filter(func(number): return number != 1)) # [2, 3] Mesmo método só que usando lambda.
	#-----------------------------------------------------------------------------------------------
	# 									Método: find(what: Variant, from: int = 0)
	# Procura no array por um valor e retorna a index do valor. Returna -1 se a index não é achada.
	# Opcionalmente, o index de pesquisa inicial pode ser passado.
	var array19 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	print(array19.find(4)) # 3
	# Neste exemplo, a busca começará a partir da quarta posição do array, onde o valor é 4 
	# (já que os index em GDScript começam em 0). A função Array.find() percorrerá o array a partir
	# desse ponto em busca do valor 7. Se o valor 7 for encontrado, a função retornará o index onde 
	# o 7 foi encontrado, caso contrário, retornará -1.
	print(array19.find(7, 3)) # 6
	var array20 = ["Escudo", "Armadura", "Botas", "Capacete", "Luvas"]
	print(array20.find("Cueca")) # -1
	#-----------------------------------------------------------------------------------------------
	# 									Método: get_typed_builtin()
	# Retorna o tipo da Variant.Type do array de acordo com a @GlobalScope.
	var array22: Array[int] = [1,2,3]
	print(array22.get_typed_builtin()) # 2. Retorna TYPE_INT = 2
	var array23 = [1,2,3]
	print(array23.get_typed_builtin()) # 0. Retorna TYPE_NILL = 0
	#-----------------------------------------------------------------------------------------------
	#	 								Método: get_typed_class_name()
	# Retorna um nome de classe de um Array do tipo @GlobalScope.TYPE_OBJECT.
	var array24 : Array[Button] = [Button.new(), Button.new(), Button.new()]
	print(array24.get_typed_class_name()) # Button
	print(array24.get_typed_builtin()) # 24
	#-----------------------------------------------------------------------------------------------
	#	 								Método: get_typed_script()
	# Retorna o script associado a um array digitado vinculado a um nome de classe.
	var class_test_node = MyTestClass.new()
	var array25: Array[MyTestClass] = [class_test_node, class_test_node]
	print(array25.get_typed_script()) # <GDScript#-9223372010145446756>
	#-----------------------------------------------------------------------------------------------
	#	 								Método: is_same_typed(array: Array)
	# Retorna verdadeiro se um array é do mesmo tipo que o outro.
	var array30 : Array[float] = [0.2, 0.1, -3.9]
	var array31 : Array[float] = [2.6, -1.8, 5.0]
	print(array30.is_same_typed(array31)) # True.
	#-----------------------------------------------------------------------------------------------
	#	 								Método: is_typed()
	# Retorna verdadeiro se o array é tipado.
	var array32 : Array[Vector2i] = [Vector2(32, 32), Vector2(64, 64)]
	print(array32.is_typed()) # True.
	var array33 = [Vector2(32, 32), Vector2(64, 64)]
	print(array33.is_typed()) # False.
	#-----------------------------------------------------------------------------------------------
	#	 								Método: has(value: Variant)
	# Retorna true se o array contém o valor dado. Isto é equivalente a usar o "in" operator.
	print(["Cajado", "Manto"].has("Manto")) # True.
	
	var bainha = ["Espada", 3, "Cinto", 19]
	if "Espada" in bainha:
		print("Tem Espada na bainha") # Tem Espada na bainha.
	else:
		print("Não tem")
	
	if bainha.has("Cajado"):
		print("Tem Cajado na bainha")
	else:
		print("Não tem") # Não tem.
	#-----------------------------------------------------------------------------------------------
	#	 								Método: hash()
	# Retorna um valor inteiro de 32 bits que representa o array e seu conteúdo.
	# Esse hash é uma representação numérica única dos elementos contidos no array, permitindo que
	# você compare arrays de maneira eficiente.
	var array26 = [1, 2, 3, 4, 5]
	var hashValue = array26.hash()
	print("O hash do array é: ", hashValue) # O hash do array é: 922487137
	#-----------------------------------------------------------------------------------------------
	#	 								Método: insert(position: int, value: Variant)
	# Insere um novo elemento em uma determinada posição do array. A posição deve ser válida ou
	# estar no final do array (pos == size()).
	# Nota: Este método atua no local e não retorna um valor.
	# Nota²: Em arrays grandes, este método será mais lento se o elemento inserido estiver próximo
	# ao início do array (index 0). Isso ocorre porque todos os elementos colocados após o 
	# elemento recém-inserido devem ser reindexados.
	var array27 = [1, 2, 3, 4]
	var newValue = 5
	array27.insert(2, newValue)
	print(array27) # [1, 2, 5, 3, 4]
	#-----------------------------------------------------------------------------------------------
	#	 								Método: is_empty() const
	# Retorna true se o array estiver vazio.
	var array28 = []
	if array28.is_empty():
		print("Está vazio.") # Está vazio.
	else:
		print("Está cheio.")
	#-----------------------------------------------------------------------------------------------
	#	 								Método: is_read_only()
	# É um método que permite verificar se um array é somente leitura ou não. Um array
	# somente leitura é aquele que não pode ser modificado após a sua criação (constantes), o que é 
	# útil em situações onde você deseja garantir a imutabilidade dos dados.
	const array29: Array = [1, 2, 3]
#	var array28: Array = [1, 2, 3]
	if array29.is_read_only():
		print("O array é somente leitura.") # O array é somente leitura.
	else:
		print("O array não é somente leitura.")
	#-----------------------------------------------------------------------------------------------
	#	 								Método: make_read_only()
	# Torna o array somente leitura, ou seja, desativa a modificação dos elementos do array. 
	var array34 = [1, 2, 3]
	array34.make_read_only()
	print(array34.is_read_only()) # True.
	var array35 = [1, 2, 3]
	print(array35.is_read_only()) # False.
	#-----------------------------------------------------------------------------------------------
	#	 								Método: map(method: Callable)
	# Chama o Callable(função/método) fornecido para cada elemento do array e retorna um novo array
	# preenchido com valores retornados pelo método.
	# O método que pode ser chamado deve receber um parâmetro Variant (o elemento atual da matriz) 
	# e pode retornar qualquer Variant.
	print([1, 2, 3].map(negate)) # Prints [-1, -2, -3].
	print([1, 2, 3].map(func(number): return -number)) # Mesmo de cima, mas usando lambda function.
	#-----------------------------------------------------------------------------------------------
	# 									Methods: all(method: callable): bool
	# É usada para verificar se todos os elementos de um Array atendem a uma determinada condição.
	# Ele retorna true se todos os elementos atenderem à condição e false se pelo menos um dos 
	# elemento não atender à condição.
	var array36 = [1, 2, 3, 4, 5]
	var todosMaioresQueZero = true
	for numero in array36:
		if numero <= 0:
			todosMaioresQueZero = false
	print(todosMaioresQueZero) # True
	print(array36.all(greater_than_5))  # True
	print([6, 10, 6].all(func(number): return number > 5)) # True. Usando lambda function.
	print([].all(greater_than_5)) # True (0/0 elementos são validos como `true`)
	# No caso de um array vazio, a função all não encontra nenhum elemento que não atenda à condição,
	# porque não há elementos para verificar. Portanto, retorna true porque todos os elementos
	# (zero, no caso de um array vazio) são considerados válidos em termos de atender à condição.
	# Essa é uma convenção útil em muitas linguagens de programação para expressar que, quando não 
	# há elementos para verificar, a condição é automaticamente considerada verdadeira, pois não há 
	# contraexemplos. Isso é consistente com a lógica de que uma afirmação universalmente quantificada
	# é verdadeira se não houver contraexemplos.
	#-----------------------------------------------------------------------------------------------
	# 									Methods: any(method: callable): bool
	# É usada para verificar se um ou mais elementos de um Array atendem a uma 
	# determinada condição. Ele retorna true se todos os elementos atenderem à
	# condição e false se pelo menos um elemento não atender à condição.
	print([6, 10, 6].any(greater_than_5))  # True (3 elementos são válidos como `true`).
	print([4, 10, 4].any(greater_than_5))  # True (1 elemento é valido como `true`).
	print([4, 4, 4].any(greater_than_5))  # False (0 elementos são válidos como `true`).
	print([].any(greater_than_5))  # False (0 elementos são válidos como `true`).
	print([6, 10, 6].any(func(number): return number > 5))  # True. Mesma coisa, mas usando lambda function.
	#-----------------------------------------------------------------------------------------------
	# 									Methods: variant max() const
#	Retorna o valor máximo contido na matriz se todos os elementos forem de tipos comparáveis.
#	Se os elementos não puderem ser comparados, será retornado nulo.
#	Para encontrar o valor máximo usando um comparador personalizado, você pode usar o "reduce". 
#	Neste exemplo, cada elemento do array é verificado e o primeiro valor máximo é retornado:
	var arr = [Vector2(0, 1), Vector2(2, 0), Vector2(1, 1), Vector2(1, 0), Vector2(0, 2)]
	print(arr.max()) # (2, 0)
	# Neste exemplo, nós comparamos o comprimento.
	print(arr.reduce(func(_max, _val): return _val if is_length_greater(_val, _max) else _max)) # (2, 0)
	#-----------------------------------------------------------------------------------------------
	# 									Methods: variant min() const
	# Retorna o valor mínimo contido na matriz se todos os elementos forem de tipos comparáveis.
	# Se os elementos não puderem ser comparados, será retornado nulo.
	var arr2 = [Vector2(0, 1), Vector2(2, 0), Vector2(1, 1), Vector2(1, 0), Vector2(0, 2)]
	print(arr2.min()) # (2, 0)
	#-----------------------------------------------------------------------------------------------
	# 									Methods: variant pick_random() const
	# Retorna um valor aleatório do array.
	var array37: Array[int] = [1, 2, 3, 4]
	print(array37.pick_random())  # Retorna um dos valores do array.
	#-----------------------------------------------------------------------------------------------
	# 									Methods: Variant pop_at ( int position )
	# Remove e retorna o elemento do array na posição do index. Se for negativo, a posição é 
	# considerada relativa ao final do array. Deixa o array intacto e retorna nulo se o array estiver 
	# vazia ou acessada fora dos limites. Uma mensagem de erro é impressa quando o array é acessado 
	# fora dos limites, mas não quando o array está vazio.
	var array38 = ["Cajado", "Arco", "Machado", "Espada"]
	array38.pop_at(2) # Remove a index 2 "Machado"
	print(array38) # "Cajado", "Arco", "Espada"]
	var findMyItem = array38.find("Espada") # Pega a index que tiver o valor de "Espada"
	array38.pop_at(findMyItem) # Remove a index que tiver o valor de "Espada"
	print(array38) # ["Cajado", "Arco"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: Variant pop_back ( )
	# Remove e retorna o último elemento do array. Retorna nulo se o array estiver vazio, sem imprimir
	# uma mensagem de erro.
	var array39 = ["Armadura", "Manto", "Cinto", "Mochila"]
	array39.pop_back() # Remove "Mochila"
	print(array39) # ["Armadura", "Manto", "Cinto"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: Variant pop_front ( )
	# Remove e retorna o primeiro elemento do array. Retorna nulo se o array estiver vazio, sem 
	# imprimir uma mensagem de erro.
	# Nota: Em arrays grandes, este método é muito mais lento que pop_back, pois reindexará todos os
	# elementos do array sempre que for chamado. Quanto maior o array, mais lento será o pop_front.
	var array40 = ["Armadura", "Manto", "Cinto", "Mochila"]
	array40.pop_front() # Remove "Armadura"
	print(array40) # ["Manto", "Cinto", "Mochila"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void push_back ( Variant value )
	# Acrescenta um elemento no final do array.
	var array41 = ["Armadura", "Manto", "Cinto", "Mochila"]
	array41.push_back("Botas") # Acrescenta "Botas" no final do array
	print(array41) # ["Armadura", "Manto", "Cinto", "Mochila", "Botas"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void push_front ( Variant value )
	# Acrescenta um elemento no início do array.
	# Nota: Em arrays grandes, este método é muito mais lento que push_back, pois reindexará todos
	# os elementos do array toda vez que for chamado. Quanto maior o array, mais lento será o push_front.
	var array42 = ["Armadura", "Manto", "Cinto", "Mochila"]
	array42.push_front("Botas") # Acrescenta "Botas" no inicio do array.
	print(array42) # [ "Botas", "Armadura", "Manto", "Cinto", "Mochila"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: Variant reduce ( Callable method, Variant accum=null ) const
	# Chama o Callable fornecido para cada elemento no array e acumula o resultado acumuladamente.
	# O método que pode ser chamado recebe dois argumentos: o valor atual de accum e o elemento atual 
	# do array. Se accum for nulo (valor padrão), a iteração começará a partir do segundo elemento,
	# sendo o primeiro usado como valor inicial de accum.
	print([1, 2, 3].reduce(sum, 10)) # 16.
	print([1, 2, 3].reduce(func(accum, number): return accum + number, 10)) # 16. Usando lambda function
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void remove_at ( int position )
	# Remove um elemento do array por index. Se o index não existir no array, nada acontece. Para remover
	# um elemento pesquisando seu valor, use erase.
	# Nota: Este método atua no local e não retorna um valor.
	# Nota: Em arrays grandes, este método será mais lento se o elemento removido estiver próximo ao início
	# do array (índice 0). Isso ocorre porque todos os elementos colocados após o elemento removido devem
	# ser reindexados.
	# Nota: a posição não pode ser negativa. Para remover um elemento relativo ao final do array,
	# use arr.remove_at(arr.size() - (i + 1)). Para remover o último elemento do array sem retornar o valor,
	# use arr.resize(arr.size() - 1).
	var array43 = ["Armadura", "Manto", "Cinto", "Mochila"]
	array43.remove_at(2) # Remove index 2 "Cinto"
	print(array43) # ["Armadura", "Manto", "Mochila"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: int resize ( int size )
	# Redimensiona o array para conter um número diferente de elementos. Se o tamanho do array for menor,
	# os elementos serão limpos; se for maior, os novos elementos serão nulos.
	var array44 = [1, 2, 3, 4]
	array44.resize(10)
	print(array44) # [1, 2, 3, 4, <null>, <null>, <null>, <null>, <null>, <null>]
	array44.resize(1)
	print(array44) # [1]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void reverse ( )
	# Inverte a ordem dos elementos do array.
	var array45 = [1, 2, 3, 4]
	array45.reverse()
	print(array45)
	#-----------------------------------------------------------------------------------------------
	# 									Methods: int rfind ( Variant what, int from=-1 ) const
	# Pesquisa o array na ordem inversa. Opcionalmente, um index de início de pesquisa pode ser
	# passado. Se negativo, o índice inicial é considerado relativo ao final da matriz.
	var array46 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	print(array46.rfind(4)) # 3
	print(array46.rfind(3, 9)) # 2
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void shuffle ( )
	# Embaralha o array de forma que os itens tenham uma ordem aleatória. Este método usa o gerador 
	# global de números aleatórios comum a métodos como @GlobalScope.randi. Chame @GlobalScope.randomize
	# para garantir que uma nova semente será usada a cada vez se você quiser embaralhamento não reproduzível.
	var array47 = [1, 2, 3, 4, 5]
	array47.shuffle()
	print(array47) # Retorna com a impressão dos elementos do array aleatóriamente.
	
	randomize()
	# Gera um número inteiro aleatório
	var random_integer = randi()
	print(random_integer)
	#-----------------------------------------------------------------------------------------------
	# 									Methods: int size ( ) const
	# Retorna o numero de elementos do array.
	var array48 = [32, 52, 612, 34, 54]
	print(array48.size()) # 5
	#-----------------------------------------------------------------------------------------------
	# 									Methods: Array slice ( int begin, int end=2147483647, int step=1, bool deep=false ) const
	# Retorna a fatia/repartição do Array, do início (inclusivo) ao fim (exclusivo), como um novo Array.
	# O valor absoluto de início e fim será limitado ao tamanho do array, então o valor padrão para 
	# final faz com que ele seja fatiado no tamanho do array por padrão (ou seja, arr.slice(1) é uma 
	# abreviação para arr.slice(1, arr.size())).
	# Se o início ou o fim forem negativos, eles serão relativos ao final da matriz (ou seja, arr.slice(0, -2)
	# é uma abreviação de arr.slice(0, arr.size() - 2)).
	# Se especificado, step é o índice relativo entre os elementos de origem. Pode ser negativo, então
	# o início deve ser maior que o fim. Por exemplo, [0, 1, 2, 3, 4, 5].slice(5, 1, -2) retorna [5, 3].
	# Se deep for verdadeiro, cada elemento será copiado por valor e não por referência.
	var array49 = ["Espada", "Escudo", "Lança", "Faca", "Maça"]
	print(array49.slice(1, 3)) # ["Escudo", "Lança"]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void sort ( )	
	# Classifica/Organiza o array.
	# Nota: O algoritmo de classificação usado não é estável. Isso significa que valores considerados 
	# iguais podem ter sua ordem alterada ao utilizar o sort.
	# Nota: As strings são classificadas em ordem alfabética (em oposição à ordem natural). Isto pode 
	# levar a um comportamento inesperado ao classificar um array de strings que termina com uma 
	# sequência de números. Considere o seguinte exemplo:
	var strings = ["string1", "string2", "string10", "string11"]
	strings.sort()
	print(strings) # [string1, string10, string11, string2]
	# Para realizar a classificação em ordem natural, você pode usar sort_custom com 
	# String.naturalnocasecmp_to da seguinte maneira:
	var strings2 = ["string1", "string2", "string10", "string11"]
	strings2.sort_custom(func(a, b): return a.naturalnocasecmp_to(b) < 0)
	print(strings2) # [string1, string2, string10, string11]
	#-----------------------------------------------------------------------------------------------
	# 									Methods: void sort_custom ( Callable func )
	# Classifica o array usando um método personalizado. O método personalizado recebe dois argumentos
	# (um par de elementos do array) e deve retornar verdadeiro ou falso. Para dois elementos a e b, se
	# o método fornecido retornar verdadeiro, o elemento b estará após o elemento a no array.
	# Nota: O algoritmo de classificação usado não é estável. Isso significa que valores considerados 
	# iguais podem ter sua ordem alterada ao utilizar sort_custom.
	# Nota: Você não pode randomizar o valor de retorno porque o algoritmo heapsort espera um resultado
	# determinístico. Randomizar o valor de retorno resultará em comportamento inesperado.	
	var my_items = [[5, "Potato"], [9, "Rice"], [4, "Tomato"]]
	my_items.sort_custom(sort_ascending)
	print(my_items) # [[4, Tomato], [5, Potato], [9, Rice]].

	# Descendente, versão lambda.
	my_items.sort_custom(func(a, b): return a[0] > b[0])
	print(my_items) # [[9, Rice], [5, Potato], [4, Tomato]].

func greater_than_5(number):
	return number > 5

func remove_1(number):
	return number != 1

func negate(number):
	return -number

func is_length_greater(a, b):
	return a.length() > b.length()

func sum(accum, number):
	return accum + number

func sort_ascending(a, b):
	if a[0] < b[0]:
		return true
	return false
