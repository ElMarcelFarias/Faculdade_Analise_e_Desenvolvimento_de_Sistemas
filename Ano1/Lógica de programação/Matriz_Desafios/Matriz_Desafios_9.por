programa
{
	inteiro estante[3][3]
	cadeia produtos[6] = {"vazio", "xampu", "condicionador", "hidratante", "tintura", "demaquilante"}
	inteiro contador[6] = {0,0,0,0,0,0}, case
	
	funcao inicio()
	{
		para(inteiro i = 0; i < 3; i++) {
			para(inteiro j = 0; j < 3; j++) {
				limpa()
				escreva("-Estante coluna "+ (i+1)+" linha "+ (j+1) + "\n")
				escreva("\n")
				escreva("-Escolha o produto \n")
				escreva("-Vazio (0)\n")
				escreva("-xampu (1)\n")
				escreva("-condicionador (2)\n")
				escreva("-hidratante (3)\n")
				escreva("-tintura (4)\n")	
				escreva("-demaquilante (5)\n")	
				escreva("-Ex..:(tintura) ")
				leia(case)	

				escolha (case){
					caso 0: 
						contador[0] = contador[0] + 1
					pare

					caso 1: 
						contador[1] = contador[1] + 1
					pare

					caso 2: 
						contador[2] = contador[2] + 1
					pare

					caso 3: 
						contador[3] = contador[3] + 1
					pare

					caso 4: 
						contador[4] = contador[4] + 1
					pare

					caso 5: 
						contador[5] = contador[5] + 1
					pare
				}
				estante[i][j] = case
			}	
		}
		limpa()
		para(inteiro x = 0; x < 6; x++) {
			escreva("-Produto "+ produtos[x] + " Quantidade: "+ contador[x]+"\n")	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 797; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {estante, 3, 9, 7}-{contador, 5, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */