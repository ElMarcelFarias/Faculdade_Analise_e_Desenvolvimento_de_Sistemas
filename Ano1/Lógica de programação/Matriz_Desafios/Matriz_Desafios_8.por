programa
{
					
	inteiro graos[4][4], totalGraos = 0, maiorValorAux = 0, multiplica=0, cont=0
	funcao inicio()
	{
		escreva("----------------ATIVIDADe (ENADE 2011) XADREZ DOS GRÃOS----------------\n")
		para(inteiro i = 0; i < 4; i++) {
			para(inteiro j = 0; j < 4; j++) {
				se((j == 0) e (i == 0)) {
					multiplica = 1	
				}
				
				graos[i][j] = multiplica
				totalGraos = totalGraos	+ multiplica	
				multiplica = multiplica * 2	
				
				
			}	
		}

		para(inteiro i = 0; i < 4; i++) {
			escreva("\n")
			para(inteiro j = 0; j < 4; j++) {
				escreva(graos[i][j] + " ")
			}	
		}
		
		escreva("\nTotal de grãos..: "+totalGraos)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 461; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {graos, 4, 9, 5}-{totalGraos, 4, 22, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */