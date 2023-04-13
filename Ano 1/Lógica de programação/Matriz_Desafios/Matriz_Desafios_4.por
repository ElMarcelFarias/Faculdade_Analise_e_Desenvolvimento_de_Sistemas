programa
{
	
	funcao inicio()
	{	
		inteiro numbersOfArray[5][5], newArray[5][5]
		escreva("-------------------------Multiplica para ganhar Ltda-------------------------\n")
		para(inteiro i = 0; i < 5; i++) {
			
			para(inteiro b = 0; b < 5; b++) {
			
				escreva("Informe o "+(b+1)+"° número da linha "+(i+1)+" / coluna "+ (b+1)+"\n")
				leia(numbersOfArray[i][b])
		
				newArray[i][b] = numbersOfArray[i][b] * 2
			}
		}

		limpa()

		escreva("-------------------------Multiplica para ganhar Ltda-------------------------\n")
		escreva("Coluna original: \n")
		
		para(inteiro i = 0; i < 5; i++) {
			para(inteiro b = 0; b < 5; b++) {
				escreva(numbersOfArray[i][b] + "  |  ")
			}
			escreva("\n")		
		}

		escreva("Coluna dobrada (x2): \n")

		para(inteiro i = 0; i < 5; i++) {
			para(inteiro b = 0; b < 5; b++) {
				escreva(newArray[i][b] + "  |  ")
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
 * @POSICAO-CURSOR = 720; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numbersOfArray, 6, 10, 14}-{newArray, 6, 32, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */