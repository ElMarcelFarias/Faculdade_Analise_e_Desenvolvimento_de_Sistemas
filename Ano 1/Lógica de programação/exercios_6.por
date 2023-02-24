programa
{

	cadeia nomeVendedor 
	inteiro qtdVendido
	real totalVendido, resultadoSalario, comissaoC, salarioPrevisto
	
	funcao inicio()
	{
		escreva("Informe o nome do vendedor: ")
		leia(nomeVendedor)

		escreva("Informe a sua quantidade vendida: ")
		leia(qtdVendido)

		escreva("Total de vendas da empresa: ")
		leia(totalVendido)
          
		resultadoSalario = (50 * qtdVendido) + 500
		
		comissaoC = totalVendido * 0.05
		salarioPrevisto = (50 * 15) + (500 + comissaoC)

		
		resultadoSalario = resultadoSalario + comissaoC 
		comissaoC = comissaoC + (50 * qtdVendido)

		


		escreva("\nNome do vendedor: ",nomeVendedor, "\nValor total de comissão: ", comissaoC, "\nSalário total do vendedor: ", resultadoSalario, "\nSalário Previsto: ", salarioPrevisto )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */