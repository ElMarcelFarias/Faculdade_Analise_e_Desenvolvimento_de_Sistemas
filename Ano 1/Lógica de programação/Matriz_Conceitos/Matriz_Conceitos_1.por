programa
{
	
	funcao inicio()
	{
		//1° é a linha 2° é a coluna
		inteiro matriz[2][3]

		//1° linha
		matriz[0][0] = 10
		matriz[0][1] = 20
		matriz[0][2] = 30

		//2° linha
		matriz[1][0] = 40
		matriz[1][1] = 50
		matriz[1][2] = 60

		para(inteiro i = 0; i < 2; i++) {
			para(inteiro j = 0; j < 3; j++) {
				escreva("Posição[", (i + 1), "][" + (j + 1) + " ] = " + matriz[i][j] + "\n")	
			}	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 125; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 7, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */