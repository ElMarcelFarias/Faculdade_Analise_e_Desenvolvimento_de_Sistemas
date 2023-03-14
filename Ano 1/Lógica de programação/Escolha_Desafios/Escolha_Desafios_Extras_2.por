programa
{
	real n1,n2
	inteiro opcaoCalculo, n1mod,n2mod
	funcao inicio()
	{
		escreva("--------------CÁLCULO--------------\n")
		escreva("-Cálculos padrões\n")
		escreva("-Informe 1° número para o cálculo Ex.:(2.5) \n")
		leia(n1)
		escreva("-Informe 2° número para o cálculo Ex.:(2.0) \n")
		leia(n2)

		limpa()

		escreva("--------------------CÁLCULO-----------------------\n")
		escreva("-Digite (1) para Média entre os números digitados \n")
		escreva("-Digite (2) Diferença entre os números \n")
		escreva("-Digite (3) Produtos entre os números digitados \n")
		escreva("-Digite (4) Divisão do primeiro pelo segundo \n")
		escreva("-Digite (5) Resto da divisão do primeiro pelo segundo \n")
		escreva("-Digite (6) Divisão do segundo pelo primeiro \n")
		escreva("-Digite (7) Resto da divisão do segundo pelo primeiro \n")
		escreva("-Digite (8) Soma dos dois números \n")
		escreva("--------------------CÁLCULO-----------------------\n")
		leia(opcaoCalculo)
		limpa()
		
		escolha(opcaoCalculo) {
			caso 1: 
				n1 = (n1 + n2) / 2
				escreva("A média do 1° número com o 2° número é "+ n1)
			pare

			caso 2: 
				n1 = n1 - n2
				escreva("A diferença entre o 1° número e 2° número é "+ n1)
			pare


			caso 3: 
				n1 = n1 * n2
				escreva("O produto do 1° número X 2° número é "+ n1)
			pare

			caso 4: 
				n1 = n1 / n2
				escreva("A divisão do 1° número / 2° número é "+ n1)
			pare

			caso 5: 
				escreva("-Informe 1° número para o cálculo Ex.:(2.5) \n")
				leia(n1mod)
				escreva("-Informe 2° número para o cálculo Ex.:(2.0) \n")
				leia(n2mod)
				n1mod = n1mod % n2mod
				escreva("resto da divisão do 1° número / 2° número é "+ n1mod)
			pare
			
			caso 6: 
				n2 = n2 / n1
				escreva("A divisão do 2° número / 1° número é "+ n2)
				
			pare
			
			caso 7: 
				escreva("-Informe 1° número para o cálculo Ex.:(2.5) \n")
				leia(n1mod)
				escreva("-Informe 2° número para o cálculo Ex.:(2.0) \n")
				leia(n2mod)
				n2mod = n2mod % n1mod
				escreva("resto da divisão do 2° número / 1° número é "+ n2mod)
			pare
			
			caso 8: 
				n1 = n1 + n2
				escreva("A soma dos números são  "+ n1)
			pare

			caso contrario:
				escreva("ERROR!")
			pare
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2055; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */