programa
{
	inteiro numberArray[5], contadorPar
	funcao inicio()
	{
		contadorPar = 0
		escreva("------------SOFTWARE SÓ CALCULO SEM PRECONCEITO------------\n")
		para(inteiro i = 0; i < 5; i++) {
			escreva("Informe o "+(i+1)+"° valor: ")
			leia(numberArray[i])	

			se (numberArray[i] % 2 == 0) {
				contadorPar++
			}
		}
		limpa()
		escreva("------------SOFTWARE SÓ CALCULO SEM PRECONCEITO------------\n")
		escreva("  ")
		escreva("-Numeros pares armazenados..: " +contadorPar+"\n")
		escreva(" ")
		escreva("------------SOFTWARE SÓ CALCULO SEM PRECONCEITO------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */