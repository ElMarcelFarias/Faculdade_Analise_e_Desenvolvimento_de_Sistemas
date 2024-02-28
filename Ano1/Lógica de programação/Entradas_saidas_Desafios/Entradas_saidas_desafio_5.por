programa
{


	//faltou escreva 
	real valor_hora, horas_trab_mes, salario_bruto, salario_liquido, valorInss = 0.08, valorImpRenda = 0.11, valorSindicato = 0.05
	
	//horas ao mês caso for 8 por dia ->  220
	funcao inicio()
	{
		escreva("-----CALCULO DE SALÀRIO-----")	
		escreva("\n")
		escreva("Qual é o valor da sua hora? Ex.: (34.5) ")
		leia(valor_hora)

		escreva("Quantas horas trabalhadas ao mês? Ex.:(8.5) ")
		leia(horas_trab_mes)

		salario_bruto = valor_hora * horas_trab_mes

		//Calculo de descontos 
		valorInss = salario_bruto * valorInss
		valorImpRenda = salario_bruto * valorImpRenda
		valorSindicato = salario_bruto * valorSindicato

		
		//Salário liquido
		salario_liquido = salario_bruto - (valorInss + valorImpRenda + valorSindicato)
		
		escreva("\nSalário Bruto   -> ", salario_bruto)
		escreva("\nValor INSS      -> ", valorInss)
		escreva("\nValor Sindicato -> ", valorSindicato)
		escreva("\nSalário Líquido -> ", salario_liquido)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 410; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */