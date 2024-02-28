programa
{
	inteiro numberArrayInt[5], multiplicadorNumber
	funcao inicio()
	{
		escreva("---------------------SÓ CALCULO SEM PRECONCEITO---------------------\n")
		
		para(inteiro i = 0; i < 5; i++) {
			escreva("Informe o "+(i+1)+"° valor..: Ex(5) ")
			leia(numberArrayInt[i])	
		}

		escreva("Informe seu multiplicador..: Ex(2) ")
		leia(multiplicadorNumber)

		para(inteiro i = 0; i < 5; i++) {
			escreva(numberArrayInt[i] + " x "+ multiplicadorNumber + " = "+ numberArrayInt[i] * multiplicadorNumber + "\n")	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 528; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */