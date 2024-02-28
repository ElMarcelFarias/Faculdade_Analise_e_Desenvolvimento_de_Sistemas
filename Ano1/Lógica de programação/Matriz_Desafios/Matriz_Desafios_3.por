programa
{
	
	funcao inicio()
	{
		real numbersOfArray[4][3], sumNumbers = 0.0
		escreva("---------------------“Só soma Ltda.”---------------------\n")
		para(inteiro i = 0; i < 4; i++) {
			para(inteiro x = 0; x < 3; x++) {
				escreva("Informe o número da linha...: "+ (i+1)+" coluna...: " + (x+1)+" Ex..:(2) ")
				leia(numbersOfArray[i][x])

				sumNumbers += numbersOfArray[i][x]
			}
		}
		limpa() 
		escreva("---------------------“Só soma Ltda.”---------------------\n")
		escreva("-Total da soma...: "+ sumNumbers + "\n")
		escreva("---------------------“Só soma Ltda.”---------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */