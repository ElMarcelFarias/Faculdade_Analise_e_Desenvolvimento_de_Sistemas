programa
{
	inteiro numbersArray[10], aux, menorNumero, posicaoMenorNumero
	funcao inicio()
	{
		aux = 0
		escreva("---------------SOFTWARE CONSTATA TUDO LTDA---------------\n")
		para(inteiro i = 0; i < 4; i++) {
			escreva("Informe o "+ (i+1)+"° valor: ")
			leia(numbersArray[i])

			se (aux > numbersArray[i]) {
				menorNumero = numbersArray[i]
				posicaoMenorNumero = i
			} 
		}

		escreva("------Informações\n\n")
		escreva("-Menor número..: "+ menorNumero+"\n")
		escreva("-Posição do Menor número..: "+ posicaoMenorNumero+"\n")
		escreva("---------------SOFTWARE CONSTATA TUDO LTDA---------------\n")


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 300; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numbersArray, 3, 10, 12}-{aux, 3, 28, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */