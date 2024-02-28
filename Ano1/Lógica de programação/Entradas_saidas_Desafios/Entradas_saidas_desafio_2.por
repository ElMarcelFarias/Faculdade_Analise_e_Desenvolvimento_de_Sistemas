programa
{

	real valor_comissao, valor_custo, perc_comissao, valor_margem_lucro, perc_margem_lucro, valor_imposto_gov, perc_imposto_gov, valor_final
	
	funcao inicio()
	{
		escreva("-----LOJA DE ROUPAS------\n")
		escreva("Informe o valor de custo deste produto! Ex.:(52.6)")
		leia(valor_custo)

		escreva("Informe a porcentagem de comissão a partir do custo: Ex.:(5)")
		leia(perc_comissao)

		escreva("Informe a porcentagem de margem de lucro: Ex.:(5)")
		leia(perc_margem_lucro)

		escreva("Informe a porcentagem de impostos governamentais (GOV) Ex.:(5)")
		leia(perc_imposto_gov)
	
	
		perc_comissao = perc_comissao/100
		perc_margem_lucro = perc_margem_lucro/100
		perc_imposto_gov = perc_imposto_gov/100

	
		valor_comissao = valor_custo * perc_comissao
		valor_margem_lucro = (valor_custo * perc_comissao) * perc_margem_lucro
		// valor_margem_lucro = (valor_custo + valor_comissao) * perc_margem_lucro
		
		valor_imposto_gov = (valor_custo * perc_comissao) * (perc_margem_lucro *  perc_imposto_gov)
		valor_final = valor_comissao + valor_margem_lucro + valor_imposto_gov + valor_custo
		
	

		escreva("\nVALOR COMISSAO ---", valor_comissao) 
		escreva("\nVALOR MARGEM DE LUCRO ---", valor_margem_lucro)
		escreva("\nVALOR IMPOSTO GOV ---", valor_imposto_gov)

		escreva("\nValor Final: ", valor_final)
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 367; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */