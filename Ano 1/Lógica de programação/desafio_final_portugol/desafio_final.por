programa
{
	inclua biblioteca Texto --> t
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

		escolhaVisualizacao()
		

		
		
	}

	funcao cadeia inserirDados(cadeia auxRaca, inteiro i, inteiro j) {

		cadeia dados = ""
		se (auxRaca == "Pitbull") {
			limpa()
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
			limpa()
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
			limpa()
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

	funcao  escolhaVisualizacao() {
		limpa()
		inteiro aux 
		escreva("------------------------------------------------------------------------------\n")
		escreva("-Visualizações de cadastros! \n")
		escreva("-Todos os animais (1) \n")
		escreva("-Animais por raça (2) \n")
		escreva("-Animais disponiveis para adoção (3) \n")
		leia(aux)
		escreva("------------------------------------------------------------------------------\n")
		cadeia auxVisualizacao = "SIM"

		enquanto(auxVisualizacao == "SIM"){
			escolha (aux) {
				caso 1:
					escreva("Lista de Pitbull...:\n")
					para(inteiro i = 0; i < 3; i++){
						para(inteiro j = 0; j < 3; j++) {
							escolha (j) {
								caso 0:
									escreva("-Nome do "+ (i+1)+"° Pitbull...: "+matrizPitbull[i][j] + "\n")
								pare
				
								caso 1:
									escreva("-Informações sobre o comportamento do "+ (i+1)+"° Pitbull...: "+ matrizPitbull[i][j] + "\n")
								pare
				
								caso 2:
									escreva("O "+ (i+1)+"° Pitbull já foi adotado...:" + matrizPitbull[i][j] + "\n")
									escreva("\n")
								pare
									
							}
						}
					}
	
					escreva("\n\n")
					
					escreva("Lista de Vira-Lata...:\n")
					para(inteiro i = 0; i < 3; i++){
						para(inteiro j = 0; j < 3; j++) {
							escolha (j) {
								caso 0:
									escreva("-Nome do "+ (i+1)+"° Vira-Lata...: "+matrizViraLata[i][j] + "\n")
								pare
				
								caso 1:
									escreva("-Informações sobre o comportamento do "+ (i+1)+"° Vira-Lata...: "+ matrizViraLata[i][j] + "\n")
								pare
				
								caso 2:
									escreva("O "+ (i+1)+"° Vira-Lata já foi adotado...:" + matrizViraLata[i][j] + "\n")
									escreva("\n")
								pare
									
							}
						}
					}
	
					escreva("\n\n")
					
					escreva("Lista de Pastor Alemão...:\n")
					para(inteiro i = 0; i < 3; i++){
						para(inteiro j = 0; j < 3; j++) {
							escolha (j) {
								caso 0:
									escreva("-Nome do "+ (i+1)+"° Pastor Alemão...: "+matrizPastorAlemao[i][j] + "\n")
								pare
				
								caso 1:
									escreva("-Informações sobre o comportamento do "+ (i+1)+"° Pastor Alemão...: "+ matrizPastorAlemao[i][j] + "\n")
								pare
				
								caso 2:
									escreva("O "+ (i+1)+"° Pastor Alemão já foi adotado...:" + matrizPastorAlemao[i][j] + "\n")
									escreva("\n")
								pare
									
							}
						}
					}
					
				pare
	
				caso 2:
					inteiro auxRacas
					limpa()
					escreva("-Visualizar Animais por raça! \n")
					escreva("-Pitbull (1) \n")
					escreva("-Vira-Lata (2) \n")
					escreva("-Pastor Alemão (3) \n")
					leia(auxRacas)
	
					se (auxRacas == 1) {
						para(inteiro i = 0; i < 3; i++){
							para(inteiro j = 0; j < 3; j++) {
								escolha (j) {
									caso 0:
										escreva("-Nome do "+ (i+1)+"° Pitbull...: "+matrizPitbull[i][j] + "\n")
									pare
					
									caso 1:
										escreva("-Informações sobre o comportamento do "+ (i+1)+"° Pitbull...: "+ matrizPitbull[i][j] + "\n")
									pare
					
									caso 2:
										escreva("O "+ (i+1)+"° Pitbull já foi adotado...:" + matrizPitbull[i][j] + "\n")
										escreva("\n")
									pare
									
								}
							}
						}
						
					} senao se (auxRacas == 2) {
						para(inteiro i = 0; i < 3; i++){
							para(inteiro j = 0; j < 3; j++) {
								escolha (j) {
									caso 0:
										escreva("-Nome do "+ (i+1)+"° Vira-Lata...: "+matrizViraLata[i][j] + "\n")
									pare
					
									caso 1:
										escreva("-Informações sobre o comportamento do "+ (i+1)+"° Vira-Lata...: "+ matrizViraLata[i][j] + "\n")
									pare
					
									caso 2:
										escreva("O "+ (i+1)+"° Vira-Lata já foi adotado...:" + matrizViraLata[i][j] + "\n")
										escreva("\n")
									pare
										
								}
							}
						}
					} senao {
						para(inteiro i = 0; i < 3; i++){
							para(inteiro j = 0; j < 3; j++) {
								escolha (j) {
									caso 0:
										escreva("-Nome do "+ (i+1)+"° Pastor Alemão...: "+matrizPastorAlemao[i][j] + "\n")
									pare
					
									caso 1:
										escreva("-Informações sobre o comportamento do "+ (i+1)+"° Pastor Alemão...: "+ matrizPastorAlemao[i][j] + "\n")
									pare
					
									caso 2:
										escreva("O "+ (i+1)+"° Pastor Alemão já foi adotado...:" + matrizPastorAlemao[i][j] + "\n")
										escreva("\n")
									pare
										
								}
							}
						}
					}
		
					
				pare
	
				caso 3:
					escreva("-Visualizar animais disponiveis para doação! \n")
	
					para(inteiro i = 0; i < 3; i++){
						se(matrizPitbull[i][2] == "SIM") {	
							escreva("-"+ (i+1)+"° Pitbull está disponivel para doação...: "+matrizPitbull[i][2] + "\n")	
						}
					}
	
					para(inteiro i = 0; i < 3; i++){
						se(matrizViraLata[i][2] == "SIM") {	
							escreva("-"+ (i+1)+"° Vira-Lata está disponivel para doação...: "+matrizViraLata[i][2] + "\n")	
						}
					}
	
					para(inteiro i = 0; i < 3; i++){
						se(matrizPastorAlemao[i][2] == "SIM") {	
							escreva("-"+ (i+1)+"° Pastor Alemão está disponivel para doação...: "+matrizPastorAlemao[i][2] + "\n")	
						}
					}
				pare
			}
			escreva("-Você deseja fazer outra pesquisa? (SIM) (NÃO)")
			leia(auxVisualizacao)
			auxVisualizacao = t.caixa_alta(auxVisualizacao)
		}
	}
	
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizPitbull, 5, 8, 13}-{matrizViraLata, 5, 29, 14}-{matrizPastorAlemao, 5, 51, 18};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */