programa
{
	inteiro qtdLoop, n1, n2, soma
	funcao inicio()
	{
		n1 = 0
		n2 = 1
		
		escreva("------------------SOFTWARE PARA REPETIÇÃO E SOMA------------------\n")
		escreva("Informe a quantidade de vezes para repetição! Ex.:(4) \n")
		leia(qtdLoop)
		limpa()

		para(inteiro i = 0; i < qtdLoop; i++) {

			soma = n1 + n2
               escreva(n1, "+", n2, "=", soma, "\n" )
               n1 = n2
               n2 = soma
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 376; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */