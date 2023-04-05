programa
{
	inclua biblioteca Util --> u
	inteiro diaTempArrays[25], totalDiasTempArray[12], valorMaiorAux, valorMenorAux
	cadeia mesesString[12] = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"}
	funcao inicio()
	{
		valorMaiorAux = 0
		escreva("---------------------SOFTWARE MÉDIA DE TEMP. ANUAL---------------------\n")
		para(inteiro i = 0; i < 12; i++) {
			escreva("Informe a temperatura do mês de"+mesesString[i]+"\n")
			para(inteiro b = 0; b < 25; b++) {
				diaTempArrays[i] = u.sorteia(0, 35)
				escreva("Temperatura do "+ (b+1)+"° dia..: "+ diaTempArrays[i] +"\n")
				totalDiasTempArray[i] = totalDiasTempArray[i] + diaTempArrays[i]
			}
			totalDiasTempArray[i] = (totalDiasTempArray[i] / 25)
		
			se(totalDiasTempArray[i] > valorMaiorAux) {
				valorMaiorAux = totalDiasTempArray[i]
			} 
			
			se(i == 0) {
				valorMenorAux = totalDiasTempArray[i]	
			}

			se(valorMenorAux > totalDiasTempArray[i]) {
				valorMenorAux = totalDiasTempArray[i]
			}
			
		}
		escreva("\n")
		escreva("--------------------INFORMAÇÕES FINAIS--------------------\n")
		escreva("\n")
		para(inteiro c = 0; c < 12; c++) {
			escreva("-Média do mês de "+mesesString[c]+" ..: " + (totalDiasTempArray[c]) + "\n")
		}

		escreva("-Valor maior...:"+ valorMaiorAux + "\n")
		escreva("-Valor menor...:"+ valorMenorAux + "\n")
		escreva("\n")
		escreva("--------------------INFORMAÇÕES FINAIS--------------------\n")
		
		
		//escreva("Média do mês..: " + (totalDiasTempArray[i] / 25) + "\n")
	}

	
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valorMaiorAux, 4, 52, 13}-{valorMenorAux, 4, 67, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */