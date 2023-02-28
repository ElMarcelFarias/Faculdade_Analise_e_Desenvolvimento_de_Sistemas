programa
{
	
	funcao inicio()
	{
		inteiro nroInformado
		inteiro nroAntecessor
		inteiro nroSucessor

		escreva("Olá\n")
		escreva("Nesse programa verificaremos se o número antecessor e o sucessor estão corretos.\n")

		escreva("Informe o número a ser verificado: Ex.:(4)  ")
		leia(nroInformado)
		escreva("\n")

		escreva("Informe seu número antecessor: Ex.:(2)  ")
		leia(nroAntecessor)

		escreva("Informe seu número sucessor: Ex.:(5)  ")
		leia(nroSucessor)

		escreva("\n")

		se(nao(nroAntecessor == (nroInformado - 1)) e nao(nroSucessor == (nroInformado + 1))) {
			escreva("Ambos números, antecessor e sucessor estão incorretos \n Sucessor: " + nroSucessor + "\n Antecessor: "+ nroAntecessor + "\n Número informado: " + nroInformado)
		} senao se (nao(nroAntecessor == (nroInformado - 1))){
			escreva("Você perdeu por que o número antecessor está incorreto!!! -> " + nroAntecessor)
		} senao se (nao(nroSucessor == (nroInformado + 1))){
			escreva("Você perdeu por que o número sucessor está incorreto!!! -> " + nroSucessor)	
		} senao {
			escreva("\n Você ganhou!!!")
			escreva("\n Sucessor: " + nroSucessor + "\n Antecessor: "+ nroAntecessor + "\n Número informado: " + nroInformado)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */