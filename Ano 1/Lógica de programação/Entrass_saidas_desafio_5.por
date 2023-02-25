programa
{

	real valor_hora, horas_trab_mes, salario_bruto, salario_liquido, valorInss = 0.08, valorImpRenda = 0.11, valorSindicato = 0.05
	//horas ao mês caso for 8 por dia ->  220
	funcao inicio()
	{
		escreva("-----CALCULO DE SALÀRIO-----")	
		escreva("\n")
		escreva("Qual é o valor da sua hora? ")
		leia(valor_hora)

		escreva("Quantas horas trabalhadas ao mês? ")
		leia(horas_trab_mes)

		salario_bruto = valor_hora * horas_trab_mes

		//Calculo de descontos 
		valorInss = salario_bruto * valorInss
		valorImpRenda = salario_bruto * valorImpRenda
		valorSindicato = salario_bruto * valorSindicato

		
		//Salário liquido
		salario_liquido = salario_bruto - (valorInss + valorImpRenda + valorSindicato)
		
		escreva(salario_liquido, "  ", salario_bruto)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 323; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */