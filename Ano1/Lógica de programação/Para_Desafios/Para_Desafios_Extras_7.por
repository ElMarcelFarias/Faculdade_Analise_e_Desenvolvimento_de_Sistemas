programa
{
	inteiro qtdPar, qtdImpar
	funcao inicio()
	{

		qtdPar = 0
		qtdImpar = 0
		escreva("-----------------SOFTWARE QUANTIDADE DE PARES E IMPARES -----------------\n")
		para(inteiro i =0; i < 231; i++) {
			se((i%2) == 0) {
				qtdPar = qtdPar + 1
			} senao {
				qtdImpar = qtdImpar + 1
			}
		}

		escreva("-Quantidade total de números: 231 \n")
		escreva("-Quantidade de números pares..: "+ qtdPar + "\n")
		escreva("-Quantidade de números impares..: "+ qtdImpar + "\n")
		escreva("-----------------SOFTWARE QUANTIDADE DE PARES E IMPARES -----------------\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 311; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */