programa
{
	inteiro numbersArray[10], menorNumero, posicaoMenorNumero
	funcao inicio()
	{
		escreva("---------------SOFTWARE CONSTATA TUDO LTDA---------------\n")
		para(inteiro i = 0; i < 4; i++) {
			escreva("Informe o "+ (i+1)+"° valor: ")
			leia(numbersArray[i])
		}

		menorNumero = numbersArray[0]
		para(inteiro i = 0; i < 4; i++) {
			se (menorNumero > numbersArray[i]) {
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
 * @POSICAO-CURSOR = 271; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */