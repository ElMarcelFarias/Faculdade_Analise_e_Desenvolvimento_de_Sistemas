programa
{
	inteiro numbersOfArray[4][4]
	cadeia aux
	funcao inicio()
	{
		escreva("----------------------VALORES DIAGONAIS NA MATRIZ----------------------\n")	
		para(inteiro i = 0; i < 4; i++) {
			para(inteiro b = 0; b < 4; b++) {
				escreva("Informe o "+(b+1)+"° número da linha "+(i+1)+" / coluna "+ (b+1)+"\n")
				leia(numbersOfArray[i][b])
			}
		}

		para(inteiro i = 0; i < 4; i++) {
			para(inteiro b = 0; b < 4; b++) {
				aux = " "
				se((i==b)) {
					aux = " | "	
				}



				se ((b == 3) e (i == 0) ou (b == 2) e (i == 1) ou (b == 1) e (i == 2) ou 
					(b == 0) e (i == 3)) {
					aux = " | "
				}

				escreva(aux + numbersOfArray[i][b] + aux)
			}
			escreva("\n")
		}

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 364; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numbersOfArray, 3, 10, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */