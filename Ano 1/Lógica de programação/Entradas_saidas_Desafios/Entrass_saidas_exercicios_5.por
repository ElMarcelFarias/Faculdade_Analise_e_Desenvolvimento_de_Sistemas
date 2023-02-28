programa
{

	cadeia nomeCompleto
	cadeia dataNascimento
	inteiro horaAtual
	inteiro minutoAtual
	funcao inicio()
	{
		escreva("Informe seu nome completo: ")
		leia(nomeCompleto)

		escreva("Informe sua data de nascimento (DD/MM/YYYY): ")
		leia(dataNascimento)

		escreva("Que horas são? ")
		leia(horaAtual)

		escreva("Quantos minutos são? ")
		leia(minutoAtual)

		minutoAtual =  1350 - ((horaAtual * 60) + minutoAtual)
		minutoAtual = minutoAtual * 1
		
		
		
		escreva(" Nome Completo: ", nomeCompleto, "\n Data de Nascimento: ", dataNascimento, " \n Faltam ",minutoAtual, " para as 22:30" )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 454; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */