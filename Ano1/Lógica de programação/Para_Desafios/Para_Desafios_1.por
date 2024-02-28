programa
{
	inteiro soma, qtdLoop
	funcao inicio()
	{

		escreva("Informe a quantidade de vezes para o loop: (Ex.: 10) ")
		leia(qtdLoop)
		
		soma = 0
		para(inteiro i = 0; i < qtdLoop; i++) {
			
			se((i%2) == 0) {

				escreva("Números pares " + i +"  \n")
				soma = soma + i
			}
		}
		escreva("Soma dos números pares: " + soma)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 222; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */