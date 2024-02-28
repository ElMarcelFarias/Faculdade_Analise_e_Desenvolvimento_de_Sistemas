programa
{
	inteiro numbersArray[4], aux 
	
	funcao inicio()
	{
		aux = 0
		escreva("-------------SOFTWARE ORDEM DECRESCENTE-------------\n")
		para(inteiro i=0; i < 4; i++){
			escreva("Informe o "+(i+1)+"° número Ex.:(2) ")
			leia(numbersArray[i])
		}

		para(inteiro i=4; i > 0; i--) {
			aux = i - 1
			escreva("Numero informado: "+ numbersArray[aux] + "\n")
		}
		escreva("-------------SOFTWARE ORDEM DECRESCENTE-------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 63; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numbersArray, 3, 9, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */