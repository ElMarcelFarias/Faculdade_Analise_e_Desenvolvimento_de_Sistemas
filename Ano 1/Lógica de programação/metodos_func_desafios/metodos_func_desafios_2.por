programa
{
	
	funcao inicio()
	{
		inteiro anoNascimento
		escreva("-----------------SOFTWARE PARA PRATICAR METODOS E FUNÇÕES(IDADE)-----------------\n")

		anoNascimento = anoInserir()
		printIdade(anoNascimento)
		
	}

	funcao inteiro anoInserir() {
		inteiro ano
		escreva("Informe o ano do seu nascimento, por favor! Ex.:(2003) ")
		leia(ano)

		retorne ano
	}

	funcao printIdade (inteiro ano) {
		limpa()
		escreva("-Sua idade é..: "+ (2023 - ano) + " anos de idade! ")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 219; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {anoNascimento, 6, 10, 13};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */