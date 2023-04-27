programa
{
	cadeia racas[3] = {"Pitbull", "Vira-Lata", "Pastor Alemão"} 
	cadeia matrizPitbull[3][3], matrizViraLata[3][3], matrizPastorAlemao[3][3]
	funcao inicio()
	{
		escreva("-------------------ADOÇÂO DE ANIMAIS-------------------\n")

		para(inteiro x = 0; x < 3; x++) {
			se (racas[x] == "Pitbull") {
				para(inteiro i = 0; i < 3; i++){
					para(inteiro j = 0; j < 3; j++) {
						cadeia auxRaca = "Pitbull"
						matrizPitbull[i][j] = inserirDados(auxRaca, i, j)
					}
				}
					
			} senao se (racas[x] == "Vira-Lata") {
				para(inteiro i = 0; i < 3; i++){
					para(inteiro j = 0; j < 3; j++) {
						cadeia auxRaca = "Vira-Lata"
						matrizViraLata[i][j] = inserirDados(auxRaca, i, j)
					}
				}
			} senao {
				para(inteiro i = 0; i < 3; i++){
					para(inteiro j = 0; j < 3; j++) {
						cadeia auxRaca = "Pastor Alemão"
						matrizPastorAlemao[i][j] = inserirDados(auxRaca, i, j)
					}
				}
			}
			
		}
		

		
		
	}

	funcao cadeia inserirDados(cadeia auxRaca, inteiro i, inteiro j) {

		cadeia dados = ""
		se (auxRaca == "Pitbull") {
			escolha (j) {
				caso 0:
					escreva("Informe o nome do "+ (i+1)+"° Pitbull ")
					leia(dados)
				pare

				caso 1:
					escreva("Algumas informações sobre o comportamento do "+ (i+1)+"° Pitbull ")
					leia(dados)
				pare

				caso 2:
					escreva("O "+ (i+1)+"° Pitbull já foi adotado? (SIM/NÃO) ")
					leia(dados)
				pare
					
			}
			
		} senao se (auxRaca == "Vira-Lata") {
			escolha (j) {
				caso 0:
					escreva("Informe o nome do "+ (i+1)+"° Vira-Lata ")
					leia(dados)
				pare

				caso 1:
					escreva("Algumas informações sobre o comportamento do "+ (i+1)+"° Vira-Lata ")
					leia(dados)
				pare

				caso 2:
					escreva("O "+ (i+1)+"° Vira-Lata já foi adotado? (SIM/NÃO) ")
					leia(dados)
				pare	
			}
			
		} senao {
			escolha (j) {
				caso 0:
					escreva("Informe o nome do "+ (i+1)+"° Pastor Alemão ")
					leia(dados)
				pare

				caso 1:
					escreva("Algumas informações sobre o comportamento do "+ (i+1)+"° Pastor Alemão ")
					leia(dados)
				pare

				caso 2:
					escreva("O "+ (i+1)+"° Pastor Alemão já foi adotado? (SIM/NÃO) ")
					leia(dados)
				pare	
			}
		}

		
		retorne dados
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizPitbull, 4, 8, 13}-{matrizPastorAlemao, 4, 51, 18}-{matrizViraLata, 4, 29, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */