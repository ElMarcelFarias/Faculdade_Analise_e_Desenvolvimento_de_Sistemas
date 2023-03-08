programa
{
	cadeia formaLeague
	caracter divisaoLeague
	funcao inicio()
	{
		escreva("-----SOFTWARE FUTEBOL LEAGUE (Organização ------) \n")
		escreva("-AFC ou NFC Ex.:(AFC)\n")
		escreva("Informe a conferência! ")
		leia(formaLeague)

		se(formaLeague == "AFC") {
			limpa()
			escreva("-Qual divisão mostrar? \n")
			escreva("-East  (E)\n")
			escreva("-North (N)\n")
			escreva("-South (S)\n")
			escreva("-West  (W)\n")
			leia(divisaoLeague)

			escolha(divisaoLeague) {
				caso 'E':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Bills\n")
					escreva("-Dolphins\n")
					escreva("-Patriots\n")
					escreva("-Jets\n")
				pare

				caso 'N':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Ravens\n")
					escreva("-Bengals\n")
					escreva("-Browns\n")
					escreva("-Steelers\n")
				pare

				caso 'S':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Texans\n")
					escreva("-Colts\n")
					escreva("-Jaguars\n")
					escreva("-Titans\n")
				pare

				caso 'W':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Broncos\n")
					escreva("-Chiefs\n")
					escreva("-Raiders\n")
					escreva("-Chargers\n")
				pare

				caso contrario:
					escreva("Escolha uma opção correta!")
				
				
			}
			
			
		} senao {
			limpa()
			escreva("-Qual divisão mostrar? \n")
			escreva("-East  (E)\n")
			escreva("-North (N)\n")
			escreva("-South (S)\n")
			escreva("-West  (W)\n")
			leia(divisaoLeague)

			escolha(divisaoLeague) {
				caso 'E':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Cowboys\n")
					escreva("-Giants\n")
					escreva("-Eagles\n")
					escreva("-Redskins\n")
				pare

				caso 'N':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Bears\n")
					escreva("-Lions\n")
					escreva("-Packers\n")
					escreva("-Vikings\n")
				pare

				caso 'S':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Falcons\n")
					escreva("-Panthers\n")
					escreva("-Saints\n")
					escreva("-Buccaneers\n")
				pare

				caso 'W':
					limpa()
					escreva("LISTA DE TIMES\n")
					escreva("-Cardinals\n")
					escreva("-49ers\n")
					escreva("-Seahawks\n")
					escreva("-Rams\n")
				pare

				caso contrario:
					escreva("Escolha uma opção correta!")
			
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 375; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */