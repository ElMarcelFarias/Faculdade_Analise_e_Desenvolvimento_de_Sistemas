programa
{
	real horaAtendimento, minutosAtendimento, aux
	
	funcao inicio()
	{
		escreva("Olá Suporte! me informe quanto tempo você ficou em atendimeno \n")

		escreva("Foram quantas horas? caso não tenha tido informe (0) ")
		leia(horaAtendimento)
		
		escreva("Foram quantos minutos? ")
		leia(minutosAtendimento)

		
		horaAtendimento = horaAtendimento * 60
		aux = (horaAtendimento + minutosAtendimento) * 60
		escreva("Foram um total de ", aux, " segundos")
		

		


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */