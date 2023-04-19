programa
{
	real notasCampeonato[4][3], potuacaoTotal[4], totalPontuacao = 0.00, totalNotasArray[4]
	logico validaNumero, auxMaiorMenor, auxChoose = verdadeiro
	cadeia nomeEquipes[4]
	inteiro aux = 0, choose, chooseEquipe = 0, partidaVerificar = 0, valorAuxMaior = 0
	funcao inicio()
	{
		escreva("------------------------------CAMPEONATO DESAFIO 7 ------------------------------\n")
		para(inteiro i = 0 ; i < 4; i++) {
			escreva("-Informe o nome da "+(i+1)+"° equipe: " )
			leia(nomeEquipes[i])
			totalPontuacao = 0.00
			para(inteiro c = 0; c < 3; c++) {
				faca{
					escreva("-Informe as notas do time "+ nomeEquipes[i] + ". Ex.:(5.6) ")
					leia(notasCampeonato[i][c])
					se((notasCampeonato[i][c] > 10) ou (notasCampeonato[i][c] < 0)) {
						limpa()
						auxMaiorMenor = verdadeiro
						escreva("-Número inválido, tente novamente! \n")	
					} senao {
						auxMaiorMenor = falso
					}
					
					para(inteiro z = 0; z < i; z++) {
						se (notasCampeonato[i][c] == notasCampeonato[z][c]) {
							escreva("A nota não pode ser igual dos outros times! ")
							validaNumero = verdadeiro
							pare
						} senao {
							validaNumero = falso	
						}
					}

					se((nao validaNumero) e (nao auxMaiorMenor)) {
						totalPontuacao = notasCampeonato[i][c] + totalPontuacao
					}

					
					
				}enquanto((auxMaiorMenor != falso) ou (validaNumero != falso))
				
			}

			totalNotasArray[i] = totalPontuacao

		}

		limpa()
		enquanto(auxChoose) {
			escreva("-Ver tabela inteira (1) \n")
			escreva("-Ver nome das equipes (2) \n")
			escreva("-Ver a portuação de uma equipe em um determinado jogo (3) \n")
			escreva("-Ver o nome da equipe vencedora em um jogo específico (4) \n")
			escreva("-Ver o nome da equipe perdedora em um jogo específico (5) \n")
			leia(choose)
			escolha(choose) {
				caso 1:
					escreva("TABELA INTEIRA \n")
					para(inteiro h = 0; h < 4; h++) {
						escreva("\n -->"+nomeEquipes[h])
						para(inteiro b = 0; b < 3; b++) {
							escreva(notasCampeonato[h][b] + "  ")
						}
					}
				pare

				caso 2:
					escreva("VER O NOME DAS EQUIPES \n")
					para(inteiro h = 0; h < 4; h++) {
						escreva("---> "+nomeEquipes[h]+" \n")
					}
				pare

				caso 3:
					limpa()
					para(inteiro h = 0; h < 4; h++) {
						escreva("---> "+nomeEquipes[h]+" ("+(h)+")\n")
					}
					escreva("Informe a equipe...: Ex.:(2) ")
					leia(chooseEquipe)
					para(inteiro x = 0; x < 3; x++) {
						escreva("---> "+(x+1)+"° Pontuação: "+ notasCampeonato[chooseEquipe][x] + " \n")	
					}
					escreva("---> Total de pontos: "+totalNotasArray[chooseEquipe] + " \n")
				pare

				caso 4:
					escreva("Informe qual a partida deseja verificar Ex..: (2) \n")
					leia(partidaVerificar)
					para(inteiro b = 0; b < 4; b++) {
						se(notasCampeonato[b][partidaVerificar] > valorAuxMaior) {
							valorAuxMaior = b
						}
					}
					escreva("-Nome da equipe: "+ nomeEquipes[valorAuxMaior]+"\n")
				pare

				caso 5:
				pare
					
			}

			escreva("-Deseja continuar a lista? S(verdadeiro) / F(falso)")
			leia(auxChoose)
			
				
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 560; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notasCampeonato, 3, 6, 15}-{potuacaoTotal, 3, 29, 13}-{totalNotasArray, 3, 70, 15}-{nomeEquipes, 5, 8, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */