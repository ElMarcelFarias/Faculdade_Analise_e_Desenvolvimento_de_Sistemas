programa
{
	//DESAFIO 1
	//Você foi contratado por um clube esportivo para criar um programa que atuará em
	//suas eleições presidenciais. Ou seja, você criará uma urna eletrônica para essa
	//eleição. Para tanto, você trabalhará com um menu que apresentará as seguintes
	//opções para o eleitor:
	inclua biblioteca Texto --> t

	cadeia votantes, status
	inteiro voto
	funcao inicio()
	{
		inteiro qtdVoto1 = 0, qtdVoto2 = 0, qtdVoto3 = 0, branco = 0, nulos = 0
		
		escreva("---------------ELEIÇÕES---------------\n")
		escreva("-Lista de candidatos \n")
		escreva("-Osmar Profundo (15)\n")
		escreva("-Alceu Dispôr(32)\n")
		escreva("-Armando Goupe (44)\n")
		escreva("-BRANCO (0)\n")
		escreva("--------------------------------------\n")

		escreva("-Existem pessoas para iniciar as votações? (S/N) ")
		leia(votantes)
		votantes = t.caixa_alta(votantes)

		se (votantes == "S") {

			
			enquanto(votantes == "S") {
				limpa()

				escreva("---------------ELEIÇÕES---------------\n")
				escreva("-Lista de candidatos \n")
				escreva("-Osmar Profundo (15)\n")
				escreva("-Alceu Dispôr(32)\n")
				escreva("-Armando Goupe (44)\n")
				escreva("-BRANCO (0)\n")
				escreva("--------------------------------------\n")
				escreva("Informe o seu voto Ex.: (15) ")
				leia(voto)

				escolha(voto) {

					caso 15:
						qtdVoto1 = qtdVoto1 + 1
					pare

					caso 32:
						qtdVoto2 = qtdVoto2 + 1
					pare

					caso 44:
						qtdVoto3 = qtdVoto3 + 1
					pare

					caso 0:
						branco = branco + 1
					pare

					caso contrario:
						nulos = nulos + 1
					
						
				}
				
				
				escreva("Existem mais votantes? (S/N) ")
				leia(votantes)
				votantes = t.caixa_alta(votantes)
			}
	
			

			se ((qtdVoto1 == qtdVoto2) e (qtdVoto1 == qtdVoto3) e (qtdVoto2 == qtdVoto3)) {
				status = "EMPATE! número de votos iguais"
			} senao se((qtdVoto1 > qtdVoto2) e (qtdVoto1 > qtdVoto3)) {
				status = "Osmar Profundo ganhou com uma quantidade de "+ qtdVoto1 + " votos!"
			} senao se (qtdVoto2 > qtdVoto3) {
				status = "Alceu Dispôr ganhou com uma quantidade de "+ qtdVoto2 + " votos!"
			} senao {
				status = "Armando Goupe ganhou com uma quantidade de "+ qtdVoto3 + " votos!"
			}

			branco = branco + nulos
			qtdVoto1 = qtdVoto1 + qtdVoto2 + qtdVoto3

			se (branco > qtdVoto1) {
				escreva("ELEIÇÕES CANCELADAS!!!! (Soma de votos nulos e brancos maiores que de votos válidos)")
				retorne
			}

			limpa()
			escreva("----------RESULTADO DAS ELEIÇÕES----------- \n")
			escreva("-")
			escreva("-"+status+"\n")
			escreva("-")
			escreva("-------------------------------------------")
		
		} senao {
			escreva("ELEIÇÕES CANCELADAS!!!! (Não houve votantes)")
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1679; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */