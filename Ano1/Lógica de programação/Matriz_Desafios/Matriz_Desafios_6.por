programa
{
	cadeia nomesClientes[3], nomeSelecionar
	real valorCompasClientes[3][3], totalValorCompasClientes = 0.0
	inteiro contador = 0, auxSelecionar, posicaoNome
	funcao inicio()
	{
		escreva("----------------------GESTÃO SUPER MERCADO UNISENAI----------------------\n")
		para(inteiro i = 0; i < 3; i++) {
			escreva("Informe seu nome...: Ex(Marcel) ")
			leia(nomesClientes[i])
			
			para(inteiro b = 0; b < 3; b++) {
				escreva("Informe o valor das compras do "+(b+1)+"° mês do "+ nomesClientes[i] + " ")
				leia(valorCompasClientes[i][b])

				
			}
			limpa()	
		}
		limpa()

		escreva("---------------------------GESTÃO SUPER MERCADO UNISENAI----------------------------\n")
		escreva("-Ver compras de um cliente (Média/ 3 meses de compras / Quantidade de compras) digite (1) \n")
		escreva("-Ver todas as compras digite (2) \n")
		escreva("---------------------------GESTÃO SUPER MERCADO UNISENAI----------------------------\n")
		leia(auxSelecionar)

		se(auxSelecionar == 1) {
			escreva("-Informe de qual pessoa você deseja visualizar...:(Marcel) ")
			leia(nomeSelecionar)
			
			para(inteiro b = 0; b < 3; b++) {
				se(nomesClientes[b] == nomeSelecionar) {
					posicaoNome = b
				}
			}
			
			para(inteiro i = 0; i < 3; i++) {
				se (valorCompasClientes[posicaoNome][i] > 0) {
					contador++
				} 
				totalValorCompasClientes += valorCompasClientes[posicaoNome][i]

				se (valorCompasClientes[posicaoNome][i] > 0) {
					escreva("-Compras "+(i+1)+"° mês...: "+ valorCompasClientes[posicaoNome][i] + " |  \n")
				} senao {
					escreva("-Compras "+(i+1)+"° mês...: - |  \n")	
				}
				
			}
				totalValorCompasClientes = totalValorCompasClientes / contador
				escreva("-Quantidade de compras....: "+ contador+"\n")
				escreva("-Média de compras.........: "+ totalValorCompasClientes + "\n")
				
		} senao {
			
			para(inteiro i = 0; i < 3; i++) {
				escreva("-Nome: "+nomesClientes[i]+" \n")
				para(inteiro b = 0; b < 3; b++) {
					se (valorCompasClientes[i][b] > 0) {
						escreva("-Compras "+(b+1)+"° mês...: "+ valorCompasClientes[i][b] + " |  \n")
					} senao {
						escreva("-Compras "+(b+1)+"° mês...: - |  \n")	
					}
				}		
			}
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1614; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 5, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */