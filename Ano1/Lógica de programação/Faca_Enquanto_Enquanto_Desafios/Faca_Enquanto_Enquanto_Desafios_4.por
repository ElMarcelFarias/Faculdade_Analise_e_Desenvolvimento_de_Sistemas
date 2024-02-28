programa
{
	
	inteiro n1, n2, soma, resultado
	
	funcao inicio()
	{
		escreva("-----------------SOFTWARE TESTE DE QI (SOMA)-----------------\n")
		faca {

			escreva("Informe 1° número Ex.:(5) ")
			leia(n1)

			escreva("Informe 2° número Ex.:(8) ")
			leia(n2)

			soma = n1 + n2

			escreva("Informe a soma desses números .: ")
			leia(resultado)

			se (resultado != soma) {
				escreva("Resposta incorreta! Tente novamente \n")
			}

			
		} enquanto( resultado != soma)

		escreva("Resposta correta! Parabéns \n")
		escreva("-----------------SOFTWARE TESTE DE QI (SOMA)-----------------\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */