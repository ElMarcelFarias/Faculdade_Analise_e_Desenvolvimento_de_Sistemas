programa
{
	inteiro n1, n2, n3
	funcao inicio()
	{
		escreva("____________________________________________________________________________\n\n")
		escreva("------PROGRAMA PARA O AMIGO ------- \n")
		escreva("Este software irá mostrar qual é o menor número entre 3 números diferentes! \n")

		escreva("------Digite o 1° número: ")
		leia(n1)

		escreva("------Digite o 2° número: ")
		leia(n2)

		escreva("------Digite o 3° número: ")
		leia(n3)

		se ((n1 != n2) e (n1 != n3) e  (n2 != n3)) {
			se (n1 > n2) {
				se (n2 > n3) {
					escreva("------n3 é o menor número: " + n3)	
				} senao {
					escreva("------n2 é o menor número: " + n2)
				}	
			} 
			
			senao se (n1 > n3) {
				escreva("------n3 é o menor número: " + n3)
			} senao{
				escreva("------n1 é o menor número: " + n1)
			} 			
		}senao {
			escreva("ERROR: Números iguais informados. Por favor digite 3 números diferentes.")	
		}
		escreva("\n____________________________________________________________________________")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 444; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */