programa
//O síndico do prédio “Balança mais não cai” solicitou uma solução que armazene
//em uma matriz a renda de cada família moradora de um edifício, calculando a
//média e o total de renda do mesmo.O prédio possui 6 andares e quatro
//apartamentos por andar.
{
	
	funcao inicio()
	{
		real rendaFamilia[6][4], totalRendaAptoAndar[6], totalRendaApto = 0.00
		escreva("--------------------“Balança mais não cai”---------------------\n")
		para(inteiro i = 0; i < 6; i++) {
			para(inteiro j = 0; j < 4; j++) {
				escreva("Informe a renda da familia do prédio "+ (j + 1)+ " do andar "+ (i + 1)+ "\n")
				leia(rendaFamilia[i][j])

				totalRendaAptoAndar[i] += rendaFamilia[i][j]
			}	
			totalRendaApto += totalRendaAptoAndar[i]
			limpa()
		}
		limpa()
		escreva("--------------------“Balança mais não cai”---------------------\n")
		escreva("Total da renda de todos os Aptos...: "+ totalRendaApto+"\n")
		escreva("Média da renda dos Aptos...........: "+ totalRendaApto/24+"\n")
		escreva("--------------------“Balança mais não cai”---------------------\n")

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */