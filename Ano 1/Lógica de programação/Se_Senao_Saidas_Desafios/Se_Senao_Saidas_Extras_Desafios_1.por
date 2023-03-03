programa
{
	
	cadeia nome
	inteiro idade, aux
	funcao inicio()
	{
		escreva("_________________________________________________\n")
		escreva("--------Verificar Condutores--------\n")

		escreva("-Informe o nome do condutor: Ex.:(Marcel) ")
		leia(nome)
		
		escreva("-Informe a idade do condutor: Ex.:(17) ")
		leia(idade)

		

		se (idade >= 18) {
			escreva("-O condutor realizou os testes práticos e teóricos? SIM [1] ou NÃO [0] ")
			leia(aux)
			se (aux == 1) {
				limpa()
				escreva("\n")
				escreva("_________________________________________________\n")
				escreva("-Nome do Condutor: "+ nome + " \n")
				escreva("-Idade do Condutor: "+ idade + " \n")
				escreva("-Está APTO a dirigir \n")
				escreva("_________________________________________________")
			} senao {
				escreva("-Condutor não APTO a dirigir. \n")	
				escreva("_________________________________________________")	
			}
			
			
		} senao {
			escreva("-Condutor não APTO a dirigir. \n")	
			escreva("_________________________________________________")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 702; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */