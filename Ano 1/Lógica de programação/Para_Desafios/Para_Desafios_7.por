programa
{
	inteiro soma, qtdPar, qtdImpar, numero
	funcao inicio()
	{	
		soma = 0
		qtdPar = 0
		qtdImpar = 0
		numero = 0
		
		escreva("-------------TODOS APROVADOS 2 -------------\n")
		escreva("solução que peça 10 números inteiros ao utilizador do programa\nCalcule e mostre a quantidade de números pares, a quantidade denúmeros ímpares e a soma de todos os números.\n")

		para(inteiro i = 0; i < 10; i++) {
			escreva("Informe o " + (i + 1) + "° número: Ex.:(2) ")
			leia(numero)
			
			soma = soma + numero
			se((numero%2) == 0) {
				qtdPar += 1
			} senao {
				qtdImpar += 1
			}
			limpa()
		}

		escreva("Está é a soma dos números: " + soma + "\n")
		escreva("Está é a quantidade de números impares: " + qtdImpar + "\n")
		escreva("Está é a quantidade de números pares: " + qtdPar + "\n")
		escreva("-------------TODOS APROVADOS 2 -------------\n")

		
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