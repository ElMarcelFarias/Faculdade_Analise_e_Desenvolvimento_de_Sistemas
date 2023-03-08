programa
{
	inteiro selectMovie
	cadeia movieName
	funcao inicio()
	{
		escreva("SENAIFLIX!\n")
		escreva("Software para sugestões de filmes/series/documentários!\n")
		escreva("Categoria: \n")
		escreva("(1) Filmes: \n")
		escreva("(2) Séries: \n")
		escreva("(3) Documentários: \n")
		leia(selectMovie)

		escolha (selectMovie) {
			caso 1: 
				escreva("Subcategoria: \n")
				escreva("(1) Drama: \n")
				escreva("(2) Ação: \n")
				leia(selectMovie)

				se (selectMovie == 1) {
					movieName = "Ex_Machina: Instinto Artificial"
				} senao {
					movieName = "Minority Repor"
				}
				
			pare

			caso 2: 
				escreva("Subcategoria: \n")
				escreva("(1) Suspense: \n")
				escreva("(2) Ficção Científica: \n")
				leia(selectMovie)

				se (selectMovie == 1) {
					movieName = "Black Mirror"
				} senao {
					movieName = "Better Than Us"
				}
			pare

			caso 3: 
				escreva("Subcategoria: \n")
				escreva("(1) Tecnologia: \n")
				escreva("(2) Biografia: \n")
				leia(selectMovie)

				se (selectMovie == 1) {
					movieName = "Watson da IBM: a máquina mais inteligente da Terra"
				} senao {
					movieName = "O Código Bill Gates"
				}
			pare
				
		}

		escreva("SUGESTÃO: "+ movieName)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 227; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */