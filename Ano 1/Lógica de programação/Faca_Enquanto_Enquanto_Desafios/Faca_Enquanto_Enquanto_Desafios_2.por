programa
{
	inteiro n1, n2, resultado, qtd
	logico aux
	funcao inicio()
	{
		escreva("-------------TESTE DE SOMA--------------\n")
		escreva("-Informe o 1° número: Ex.:(5) ")
		leia(n1)
		escreva("-Informe o 2° número: Ex.:(5) ")
		leia(n2)

		qtd = 0
		aux = verdadeiro
		n1 = n1 + n2

		enquanto(aux) {
			
			escreva("\n-Informe o resultado dessa soma .: ")
			leia(resultado)

			qtd = qtd + 1
			se (n1 == resultado) {
				aux = falso
			} senao {	
				escreva("\nRESULTADO INCORRETO!")
			}
			
		
		}
		limpa()
		escreva("-------------TESTE DE SOMA--------------\n")
		escreva("-Quantidade de tentativas .: "+qtd+"\n")
		escreva("-Soma.: "+resultado+"\n")
		escreva("-------------TESTE DE SOMA--------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */