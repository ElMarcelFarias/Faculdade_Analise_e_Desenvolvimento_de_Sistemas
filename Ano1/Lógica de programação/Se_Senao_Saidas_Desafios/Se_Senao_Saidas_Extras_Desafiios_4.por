programa
{
	inteiro vencedor, vencedor2
	cadeia competidor1, competidor2, competidor3, competidor4, aux1, aux2
	funcao inicio()
	{
		escreva("--------------------RISADÓLA CLUB------------------\n")
		escreva("-Software para calcular vencedor do campeonato!!\n")
		escreva("-")
		escreva("-Informe o nome do 1° competidor ")
		leia(competidor1)

		escreva("-Informe o nome do 2° competidor ")
		leia(competidor2)


		escreva("-Informe o nome do 3° competidor ")
		leia(competidor3)


		escreva("-Informe o nome do 4° competidor ")
		leia(competidor4)

		escreva("----------------------------------------------------\n")
		limpa()

		escreva("-----------------------------------------------------\n")
		escreva("-1° Rodada:")
		escreva("-(1) " + competidor1 + " X " + "(2) "+ competidor2+"\n")
		escreva("-Informe o vencedor Ex.:(1) ou (2): ")
		leia(vencedor)
		escreva("-----------------------------------------------------\n")
		limpa()

		se(vencedor == 1) {
			aux1 = "-(1) "+ competidor1
		} senao {
			aux1 = "-(2) "+ competidor2
		}

		escreva("-----------------------------------------------------\n")
		escreva("-2° Rodada:")
		escreva("-(3) " + competidor3 + " X " + "(4) \n"+ competidor4)
		escreva("-Informe o vencedor: ")
		leia(vencedor2)
		escreva("-----------------------------------------------------\n")
		limpa()
		
		se(vencedor == 3) {
			aux2 = "-(3) "+ competidor3
		} senao {
			aux2 = "-(4) "+ competidor4
		}

		
		
		escreva("-----------------------------------------------------\n")
		escreva("-FINAL!!!!")
		escreva(aux1 + " X " +aux2 +" \n")
		escreva("-Informe o vencedor: ")
		leia(vencedor2)
		escreva("-----------------------------------------------------\n")

		se(vencedor2 == 1) {
			limpa()
			escreva("VENCEDOR => "+ aux1)
		} senao se (vencedor2 == 2){
			limpa()
			escreva("VENCEDOR => "+ aux1)
		} senao se (vencedor2 == 3){
			limpa()
			escreva("VENCEDOR => "+ aux2)
		} senao {
			limpa()
			escreva("VENCEDOR => "+ aux2)
		}

	
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 413; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */