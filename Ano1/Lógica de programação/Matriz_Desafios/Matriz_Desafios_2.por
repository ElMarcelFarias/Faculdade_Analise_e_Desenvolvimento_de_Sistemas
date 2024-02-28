programa
{
	real numerosLinhas[4][5], totalDasLinhas[4], auxTotalLinhas[4], totalNumerosLinhas = 0.00
	funcao inicio()
	{
		escreva("------------------------Ludovico Volpato(4x5)--------------------------\n")
		para(inteiro i = 0; i < 4; i++) {
			para(inteiro j = 0; j < 5; j++) {
				escreva("-Informe o "+(j+1)+"° número da "+(i+1)+"° linha...:(5) ")
				leia(numerosLinhas[i][j])
				totalDasLinhas[i] += numerosLinhas[i][j]
			}	
			auxTotalLinhas[i] = totalDasLinhas[i]
			totalNumerosLinhas += totalDasLinhas[i]
			
		}
		limpa()
		escreva("------------------------Ludovico Volpato(4x5)--------------------------\n")

		para(inteiro i = 0; i < 4; i++) {
			escreva("Total da linha "+ (i+1)+": "+auxTotalLinhas[i]+"\n")	
		}
		escreva("Total de todas as linhas...: "+ totalNumerosLinhas+"\n")
		escreva("------------------------Ludovico Volpato(4x5)--------------------------\n")
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 596; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numerosLinhas, 3, 7, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */