programa
{
	
	funcao inicio()
	{
		inteiro idade
		cadeia nome 
		
		escreva("-----------------SOFTWARE PARA PRATICAR METODOS E FUNÇÕES-----------------\n")
		//irei fazer duas funções apenas para praticar o uso de function e method
		nome = inserirNome()
		idade = inserirIdade()
		

		printResult(idade, nome)
		
	}

	funcao cadeia inserirNome() {
		cadeia nomeInserir
		escreva("Informe o seu nome! \n")
		leia(nomeInserir)	
		
		retorne nomeInserir
	}

	
	funcao inteiro inserirIdade() {
		inteiro idadeInserir
		escreva("Informe a sua idade! \n")
		leia(idadeInserir)	
		
		retorne idadeInserir
	}

	

	funcao printResult(inteiro idade, cadeia nome) {
		escreva("\nResultado...: Nome é " +nome + " sua idade é "+ idade)	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 463; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idade, 6, 10, 5}-{nome, 7, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */