programa
{
	inteiro vetA[10], vetB[10]
	funcao inicio()
	{	
		
		para(inteiro i = 1; i < 10; i++) {
			vetB[i] = 0
			se (i % 2 ==0) {
				vetA[i] = i
			} senao {
				vetA[i] = 2 * i	escreva("vetB[i] " +vetB[i])	
			}
		}

		para(inteiro i = 1; i < 10; i++) {
			enquanto(vetA[i] > i) {
				vetB[i] = vetA[i]	
				vetA[i] = vetA[i] - 1
			}
			escreva("vetB[i] " +vetB[i])	
			escreva("vetA[i] " +vetA[i])	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 154; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */