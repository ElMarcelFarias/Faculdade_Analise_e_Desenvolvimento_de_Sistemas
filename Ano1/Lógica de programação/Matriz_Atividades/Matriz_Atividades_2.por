programa
{
	
	funcao inicio()
	{
		inteiro matriz[3][3], linha

		para(inteiro i = 0; i < 3; i++) {
			para(inteiro j = 0; j < 3; j++) {
				escreva((i+j+1)+"° Valor: ")
				leia(matriz[i][j])
			}
		}
		faca {
			escreva("\n\nLinha da matriz desejaa (1 a 3): ")
			leia(linha)	
		} enquanto(linha < 1 ou linha > 3)

		escreva(matriz[linha][0] + "|" + matriz[linha][1] + "|" + matriz[linha][2])
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 169; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */