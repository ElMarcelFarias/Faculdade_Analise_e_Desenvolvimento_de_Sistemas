programa
{
	inclua biblioteca Texto --> t
	funcao inicio()
	{
		cadeia gabaritoAluno[10], gabaritoProfessor[10]
		inteiro nota = 0

		 escreva("Para o aluno: \n")
		 para(inteiro i = 0; i < 10; i++) {
			escreva((i+1) + "° questão (A,B,C,D): ")
			leia(gabaritoAluno[i])
		 	gabaritoAluno[i] = t.caixa_alta(gabaritoAluno[i])
	 	}
	 	limpa()

		 escreva("Para o professor: \n")
	 	 para(inteiro i = 0; i < 10; i++) {
			escreva((i+1) + "° questão (A,B,C,D): ")
			leia(gabaritoProfessor[i])
		 	gabaritoProfessor[i] = t.caixa_alta(gabaritoProfessor[i])
	 	}

	 	para(inteiro i = 0; i < 10; i++) {
	 		se (gabaritoProfessor[i] == gabaritoAluno[i]) {
 				nota++	 				
 			} 
 		}

 		escreva("\nNota: "+nota)

	 	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */