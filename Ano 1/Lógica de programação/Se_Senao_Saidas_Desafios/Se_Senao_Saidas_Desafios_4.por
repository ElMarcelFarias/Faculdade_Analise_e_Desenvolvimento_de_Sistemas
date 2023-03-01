programa
{
	
	funcao inicio()
	{
		inteiro nrHoras
		real valorHoras, horasExtras, valorExtras, salarioTotal, salarioBruto
		
		escreva("----------------------------------RH FIESCademy-----------------------------------------\n")
		escreva("--Informe as horas trabalhadas do funcionário ao mês (incluindo as horas extras) Ex.: (40) ")
		leia(nrHoras)

		escreva("--Informe o valor das horas  trabalhadas do funcionário Ex.: (12) ")
		leia(valorHoras)

		escreva("----------------------------------------------------------------------------------------\n")

		horasExtras = nrHoras - 160
		valorExtras = ((valorHoras * 0.50) + valorHoras) * horasExtras
		


		se (nrHoras > 160) {
			salarioBruto = (valorHoras*160)
			salarioTotal = (valorHoras*160) + valorExtras
		} senao {
			salarioBruto = (valorHoras*160)
			salarioTotal = (valorHoras*160)
			valorExtras = 0.00
		} 
		
		
		escreva("-----------------------------------------------------------------------------------------\n")
		escreva("-Salário  bruto : "+ salarioBruto+"\n")
		escreva("-Salário  Total : "+ salarioTotal+"\n")
		escreva("-Número de Horas: "+ nrHoras+"\n")
		escreva("-Valor de Extras: "+ valorExtras+"\n")
		escreva("-----------------------------------------------------------------------------------------")
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 556; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */