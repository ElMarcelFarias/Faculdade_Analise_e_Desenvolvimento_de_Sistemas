programa
{
	inteiro classProduto
	cadeia codigoBarras, nomeProduto
	funcao inicio()
	{
		escreva("-----------HIPERSENAI-----------\n")
		escreva("-Por favor, informe o nome/descrição do produto! Ex.:(Coca-Cola 600ml)\n")
		leia(nomeProduto)
		escreva("-Por favor, informe o código de barras do produto! Ex.:(785228422) \n")
		leia(codigoBarras)
		limpa()
		escreva("-----------HIPERSENAI-----------\n")
		escreva("-CLÁSSIFICAÇÃO DOS PRODUTOS ----\n")
		escreva("-1 Açougue Ex.:(1)\n")	
		escreva("-2 Congelados Ex.:(2)\n")
		escreva("-3 Frios e laticínios Ex.:(3)\n")
		escreva("-4 Pescados ou peixaria Ex.:(4)\n")
		escreva("-5 Mercearia Ex.:(5)\n")
		escreva("-6 Padaria e confeitaria Ex.:(6)\n")
		escreva("-7 Rotisseria Ex.:(7)\n")
		escreva("-8 Biscoitos e doces Ex.:(8)\n")
		escreva("-9 Hortifrúti Ex.:(9)\n")
		escreva("-10 Higiene e beleza Ex.:(10)\n")
		escreva("-11 Infantil Ex.:(11)\n")
		escreva("-12 Limpeza Ex.:(12)\n")
		escreva("-13 Adega e bebidas Ex.:(13)\n")
		escreva("-------------------------------\n")
		leia(classProduto)

		
		escolha(classProduto) {
			caso 1: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Açougue\n")	
			pare
			
			caso 2: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Congelados\n")	
			pare

			caso 3: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Frios e laticínios\n")	
			pare

			caso 4: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Pescados ou peixaria\n")	
			pare

			caso 5: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Mercearia\n")	
			pare

			caso 6: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Padaria e confeitaria\n")	
			pare

			caso 7: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Rotisseria\n")	
			pare

			caso 8: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Biscoitos e doces\n")	
			pare

			caso 9: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Hortifrúti\n")	
			pare

			caso 10: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Higiene e beleza\n")	
			pare

			caso 11: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Infantil\n")	
			pare

			caso 12: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Limpeza\n")	
			pare

			caso 13: 
				limpa()
				escreva("-----------HIPERSENAI-----------\n")
				escreva("-PRODUTO CADASTRADO-------------\n")
				escreva("-Nome do produto: " + nomeProduto + "\n")	
				escreva("-Código de barras do produto: " + codigoBarras + "\n")	
				escreva("-Classificação do produto: " + classProduto + " - Adega e bebidas\n")	
			pare

			caso contrario: 
				escreva("ERROR!!!")
			pare
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5338; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */