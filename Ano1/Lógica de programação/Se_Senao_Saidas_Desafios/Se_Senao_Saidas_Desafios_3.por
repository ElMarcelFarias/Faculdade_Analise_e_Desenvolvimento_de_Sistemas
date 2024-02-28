programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, resto, quociente

		escreva("------DESAFIOS MATEMÁTICOS (QUOCIENTE)------")

		escreva("\n")
		escreva("------Informe o primeiro número para o desafio! : \n")
		leia(n1)

		
		escreva("------Informe o segundo número para o desafio! : \n")
		leia(n2)

		quociente = n1 / n2
		resto = n1 % n2

		se((quociente % 3 == 1) e (quociente > 3) e (resto % 2 == 0)) {
			escreva("-----------------------------------\n")
			escreva("| Primero Número: "+n1+"\n")
			escreva("| Segundo Número: "+n2+"\n")
			escreva("| Valor Quociente: "+quociente+"\n")
			escreva("| Valor Resto: "+ resto+"\n")
			escreva("| Você venceu o desafio do algoritmo")
		} senao {
			escreva("VOCÊ PERDEU!!!!")	
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */