programa
{
	cadeia formaLeague, timesFinais
	caracter divisaoLeague
	funcao inicio()
	{
		escreva("-----SOFTWARE FUTEBOL LEAGUE (Organização ------) \n")
		escreva("-AFC ou NFC Ex.:(AFC)\n")
		escreva("Informe a conferência! ")
		leia(formaLeague)

		se((formaLeague == "AFC") ou (formaLeague == "afc")) {
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
					timesFinais = "LISTA DE TIMES\n -Bills\n -Dolphins\n -Patriots\n -Jets\n"
				pare

				caso 'N':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Ravens\n -Bengals\n -Browns\n -Steelers\n"
				pare

				caso 'S':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Texans\n -Colts\n -Jaguars\n -Titans\n"
				pare

				caso 'W':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Broncos\n -Chiefs\n -Raiders\n -Chargers\n"
				pare

				caso contrario:
					escreva("Escolha uma opção correta!")
				
				
			}
			
			
		} senao se ((formaLeague == "NFC") ou (formaLeague == "nfc")){
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
					timesFinais = "LISTA DE TIMES\n -Cowboys\n -Giants\n -Eagles\n -Redskins\n"
				pare

				caso 'N':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Bears\n -Lions\n -Packers\n -Vikings\n"
				pare

				caso 'S':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Falcons\n -Panthers\n -Saints\n -Buccaneers\n"
				pare

				caso 'W':
					limpa()
					timesFinais = "LISTA DE TIMES\n -Cardinals\n -49ers\n -Seahawks\n -Rams\n"
				pare

				caso contrario:
					escreva("Escolha uma opção correta!")
			
			}
		} senao {
			escreva("OPÇÃO ERRADA")	
		}

		escreva(timesFinais)

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */