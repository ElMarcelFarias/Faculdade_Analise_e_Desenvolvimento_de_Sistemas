programa
{
	real notasCampeonato[4][3]
	logico validaNumero, auxMaiorMenor
	cadeia nomeEquipes[4]
	inteiro aux = 0
	funcao inicio()
	{
		escreva("------------------------------CAMPEONATO DESAFIO 7 ------------------------------\n")
		para(inteiro i = 0 ; i < 4; i++) {
			escreva("-Informe o nome da "+(i+1)+"° equipe: " )
			leia(nomeEquipes[i])

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
					
					
				}enquanto((auxMaiorMenor != falso) ou (validaNumero != falso))
				
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 838; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {notasCampeonato, 3, 6, 15}-{nomeEquipes, 5, 9, 11}-{aux, 6, 9, 3}-{i, 10, 15, 1}-{c, 14, 16, 1}-{z, 26, 18, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */