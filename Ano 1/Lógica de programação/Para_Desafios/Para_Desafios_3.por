programa
{
	inclua biblioteca Util
	funcao inicio()
	{

		inteiro nroAleatorio, palpite 
		logico winner = falso
		nroAleatorio = Util.sorteia(0,10)
		
		para(inteiro i = 0; i < 5; i++) {

			escreva("Informe seu "+(i + 1)+"° palpite Ex.:(5) ")
			leia(palpite)
	
			se(palpite == nroAleatorio) {
				winner = verdadeiro
			}
			
		}

		se (winner == verdadeiro) {
			escreva("Você GANHOU o sorteio!!!!!")
		} senao {
			escreva("Você não ganhou o sorteio! :(")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 156; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */