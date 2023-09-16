extends Node2D

# Método: front(method: Callable)
# Retorna o primeiro elemento do array. Imprime um erro e retorna nulo se o array estiver vazio.
# Nota: Chamar esta função não é o mesmo que escrever array[0]. Se o array estiver vazio, o acesso
# por index pausará a execução do projeto ao executar a partir do editor.

var array = [22, 4, 71]

func _ready():
	print(array.front()) # 22
	print(array[0]) # 22
