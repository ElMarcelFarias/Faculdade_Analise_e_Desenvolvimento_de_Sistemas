programa
{
	real numbersArraysFirst[5], numbersArraysSecond[5], numbersArrayResult[5]
	funcao inicio()
	{
		escreva("------------------SOFTWARE DE SOMA VOLPATO----------------------\n")
		
		para(inteiro i = 0; i < 5; i++) {
			escreva("Informe o primeiro número da soma..: Ex(25.4) ")
			leia(numbersArraysFirst[i])
			
			escreva("Informe o segundo número da soma..: Ex(25.4) ")
			leia(numbersArraysSecond[i])

			numbersArrayResult[i] = numbersArraysFirst[i] + numbersArraysSecond[i]
		
			limpa()
		}

		para(inteiro i = 0; i < 5; i++) {
			escreva(numbersArraysFirst[i] + " + " + numbersArraysSecond[i] + " = "+ numbersArrayResult[i]+"\n")	
		}
		escreva("------------------SOFTWARE DE SOMA VOLPATO----------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 418; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */