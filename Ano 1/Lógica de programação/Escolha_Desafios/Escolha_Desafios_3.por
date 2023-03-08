programa
{
	caracter operacao
	real n1, n2, resultado
	funcao inicio()
	{

		escreva("\n---------------CALCULADORA BÁSICA---------------\n")
		escreva("-ESCOLHA A OPERAÇÃO\n")
		escreva("-(+) SOMA\n")
		escreva("-(-) SUBTRAÇÃO\n")
		escreva("-(*) MULTIPLICAÇÃO\n")
		escreva("-(/) DIVISÃO\n")
		escreva("---------------CALCULADORA BÁSICA---------------")
		leia(operacao)

		escolha(operacao) {

			caso '+':
				limpa()
				escreva("Informe 1° número: Ex.:(1) ")
				leia(n1)
				escreva("Informe 2° número: Ex.:(1) ")
				leia(n2)

				resultado = n1 + n2
					
				escreva("Resultado: " + resultado)
				pare

			caso '-':
				limpa()
				escreva("Informe 1° número: Ex.:(1) ")
				leia(n1)
				escreva("Informe 2° número: Ex.:(1) ")
				leia(n2)

				resultado = n1 - n2
					
				escreva("Resultado: " + resultado)
				pare
			caso '*':
				limpa()
				escreva("Informe 1° número: Ex.:(1) ")
				leia(n1)
				escreva("Informe 2° número: Ex.:(1) ")
				leia(n2)

				resultado = n1 * n2
					
				escreva("Resultado: " + resultado)
				pare
			caso '/':
				faca{
					limpa()
					escreva("Informe 1° número: Ex.:(1) ")
					leia(n1)
					escreva("Informe 2° número (Número deve ser maior que 0!!): Ex.:(1) ")
					leia(n2)

				}enquanto (n2 < 0)

				resultado = n1 / n2
					
				escreva("Resultado: " + resultado)
				pare
			
		}
			
			

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 637; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */