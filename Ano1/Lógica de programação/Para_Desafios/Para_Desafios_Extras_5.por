programa
{
	inteiro n1, n2, aux
	funcao inicio()
	{

		escreva("----------SOFTWARE DE LISTAGEM DE NUMEROS--------------\n")
		escreva("-intervalo de números que o usuário desejar \n")
		escreva("-Informe o 1° número: Ex.:(5) " )
		leia(n1)
		escreva("-Informe o 2° número: Ex.:(5) " )
		leia(n2)

		se(n1 > n2) {
			aux = n2
			n2 = n1
			n1 = aux
		}
		
		para(inteiro i = n1; i < n2; i++) {
			escreva(i+"\n")
		}
		escreva("----------SOFTWARE DE LISTAGEM DE NUMEROS--------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 223; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */