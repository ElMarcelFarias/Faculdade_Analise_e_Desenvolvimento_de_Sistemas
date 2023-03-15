programa
{
	
	real valorBruto, valorGasto, valorTotalBruto, valorTotalGastos
	funcao inicio()
	{
		valorTotalBruto = 0.00
		valorTotalGastos = 0.00
		
		escreva("-----------FINANCEIRO SEMESTRAL-----------\n")

		para (inteiro i = 0; i < 6; i++) {
			escreva("Informe o ganho bruto do " + (i + 1)+ "° mês Ex.:(16.000) ")
			leia(valorBruto)

			escreva("Informe os gastos da empresa no " + (i + 1)+ "° mês Ex.:(8.536) ")
			leia(valorGasto)

			valorTotalBruto = valorTotalBruto + valorBruto
			valorTotalGastos = valorTotalGastos + valorGasto
			limpa()
		}
		
		escreva("--------------FINANCEIRO SEMESTRAL--------------\n")
		escreva("-Ganho bruto: " + valorTotalBruto + " semestral \n")
		escreva("-Gasto bruto: " + valorTotalGastos +" semestral \n")
		escreva("-Saldo Financeiro: " + (valorTotalBruto  - valorTotalGastos) +" semestral \n")
		escreva("--------------FINANCEIRO SEMESTRAL--------------\n")


	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */