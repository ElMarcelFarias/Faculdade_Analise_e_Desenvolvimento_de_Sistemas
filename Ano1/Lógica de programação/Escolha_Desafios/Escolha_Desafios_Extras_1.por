programa
{
	inteiro classProduto
	cadeia codigoBarras, nomeProduto, nomeClassificacao
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
		escreva("-3 Congelados Ex.:(2)\n")
		escreva("-4 Congelados Ex.:(2)\n")
		escreva("-5 Frios e laticínios Ex.:(3)\n")
		escreva("-6 Frios e laticínios Ex.:(3)\n")
		escreva("-7 Pescados ou peixaria Ex.:(4)\n")
		escreva("-8 Mercearia Ex.:(5)\n")
		escreva("-9 Padaria e confeitaria Ex.:(6)\n")
		escreva("-10 Rotisseria Ex.:(7)\n")
		escreva("-11 Biscoitos e doces Ex.:(8)\n")
		escreva("-12 Hortifrúti Ex.:(9)\n")
		escreva("-13 Higiene e beleza Ex.:(10)\n")
		escreva("-14 Higiene e beleza Ex.:(10)\n")
		escreva("-15 Higiene e beleza Ex.:(10)\n")
		escreva("-16 Infantil Ex.:(11)\n")
		escreva("-17 Infantil Ex.:(11)\n")
		escreva("-18 Limpeza Ex.:(12)\n")
		escreva("-19 Limpeza Ex.:(12)\n")
		escreva("-20 Limpeza Ex.:(12)\n")
		escreva("-21 Limpeza Ex.:(12)\n")
		escreva("-22 Adega e bebidas Ex.:(13)\n")
		escreva("-------------------------------\n")
		leia(classProduto)

		
		escolha(classProduto) {
			caso 1: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Açougue\n"
			pare
			
			caso 2: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Congelados\n"
			pare

			caso 3: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Congelados\n"	
			pare

			caso 4: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Congelados\n"
			pare


			caso 5: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Frios e laticínios\n"
			pare

			caso 6: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Frios e laticínios\n"	
			pare

			caso 7: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Pescados ou peixaria\n"
			pare

			caso 8: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Mercearia\n"
			pare

			caso 9: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Padaria e confeitaria\n"
			pare

			caso 10: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Rotisseria\n"
			pare

			caso 11: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Biscoitos e doces\n"
			pare

			caso 12: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Hortifrúti\n"
			pare

			caso 13: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Higiene e beleza\n"
			pare

			caso 14: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Higiene e beleza\n"
			pare

			caso 15: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Higiene e beleza\n"
			pare

			caso 16: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Infantil\n"
			pare

			caso 17: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Infantil\n"
			pare

			caso 18: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Limpeza\n"
			pare

			caso 19: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Limpeza\n"	
			pare


			caso 20: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Limpeza\n"	
			pare


			caso 21: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Limpeza\n"	
			pare

			caso 22: 
				limpa()
				nomeClassificacao = "-Classificação do produto: " + classProduto + " - Adega e bebidas\n"
			pare

			caso contrario: 
				escreva("ERROR!!!")
			pare
			
		}

		limpa()
		escreva("-----------HIPERSENAI-----------\n")
		escreva("-PRODUTO CADASTRADO-------------\n")
		escreva("-Nome do produto: " + nomeProduto + "\n")	
		escreva("-Código de barras do produto: " + codigoBarras + "\n")	
		escreva(nomeClassificacao)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4206; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */