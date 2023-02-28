programa
{
	
	funcao inicio()
	{
		real ganhoBruto1, gastosEmpresa1, ganhoBruto2, gastosEmpresa2 ,ganhoBruto3, gastosEmpresa3 
		real ganhoBruto4, gastosEmpresa4 ,ganhoBruto5, gastosEmpresa5, ganhoBruto6, gastosEmpresa6
		real ganhoBrutoTotal, gastoEmpresaTotal, saldoFinanceiro

		escreva("-----BALANÇO FINANCEIRO------")
		escreva("-----SOFTWARE PARA FAZER O BALANÇO FINANCEIRO SEMESTRAL DA EMPRESA \n")
		
		escreva("-----Informe o ganho bruto do 1° mês: Ex.:(3.000) \n")
		leia(ganhoBruto1)

		escreva("-----Informe os gastos da empresa do 1° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa1)

		escreva("-----Informe o ganho bruto do 2° mês: Ex.:(3.000) \n")
		leia(ganhoBruto2)

		escreva("-----Informe os gastos da empresa do 2° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa2)
		
		escreva("-----Informe o ganho bruto do 3° mês: Ex.:(3.000) \n")
		leia(ganhoBruto3)

		escreva("-----Informe os gastos da empresa do 3° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa3)
		
		escreva("-----Informe o ganho bruto do 4° mês: Ex.:(3.000) \n")
		leia(ganhoBruto4)

		escreva("-----Informe os gastos da empresa do 4° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa4)

		escreva("-----Informe o ganho bruto do 5° mês: Ex.:(3.000) \n")
		leia(ganhoBruto5)

		escreva("-----Informe os gastos da empresa do 5° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa5)

		escreva("-----Informe o ganho bruto do 6° mês: Ex.:(3.000) \n")
		leia(ganhoBruto6)

		escreva("-----Informe os gastos da empresa do 6° mês: Ex.:(3.000) \n")
		leia(gastosEmpresa6)
		escreva("\n")

		ganhoBrutoTotal = ganhoBruto1 + ganhoBruto2 + ganhoBruto3 + ganhoBruto4 + ganhoBruto5 + ganhoBruto6
		gastoEmpresaTotal = gastosEmpresa1 + gastosEmpresa2 + gastosEmpresa3 + gastosEmpresa4 + gastosEmpresa5 + gastosEmpresa6
		saldoFinanceiro = ganhoBrutoTotal - gastoEmpresaTotal


		se (ganhoBrutoTotal == gastoEmpresaTotal) {
			escreva("-----TABELA DE LUCROS DA EMPRESA (NÃO HOUVE LUCROS NEM PREJUÍZOS!)\n")
			escreva("-----GANHO BRUTO: "+ ganhoBrutoTotal + "\n")
			escreva("-----GASTOS DA EMPRESA: "+ gastoEmpresaTotal + "\n")	
			escreva("-----SALDO FINANCEIRO: "+ saldoFinanceiro+ "\n")
		} senao se (ganhoBrutoTotal > gastoEmpresaTotal) {
			escreva("-----TABELA DE LUCROS DA EMPRESA (HOUVE LUCROS!)\n")
			escreva("-----GANHO BRUTO: "+ ganhoBrutoTotal + "\n")
			escreva("-----GASTOS DA EMPRESA: "+ gastoEmpresaTotal + "\n")
			escreva("-----SALDO FINANCEIRO: "+ saldoFinanceiro+ "\n")
		} senao {
			escreva("-----TABELA DE LUCROS DA EMPRESA (HOUVE PREJUÍZO!)\n")
			escreva("-----GANHO BRUTO: "+ ganhoBrutoTotal + "\n")
			escreva("-----GASTOS DA EMPRESA: "+ gastoEmpresaTotal + "\n")
			escreva("-----SALDO FINANCEIRO: "+ saldoFinanceiro+ "\n")
		}
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1531; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */