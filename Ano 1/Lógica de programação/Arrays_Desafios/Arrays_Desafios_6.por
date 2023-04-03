programa
{
	inteiro numbersArray[10], valorAux
	funcao inicio()
	{
		valorAux = 0
		escreva("--------------------CONSTATA TUDO LTDA--------------------\n")
		para(inteiro i = 0; i < 10; i++) {

			
			escreva("-Informe o "+ (i+1)+"° valor Ex..:(5) ")
			leia(numbersArray[i])	

			
			se (numbersArray[i] > valorAux) {
				valorAux = numbersArray[i]
			}
		}

		escreva(valorAux)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 198; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */