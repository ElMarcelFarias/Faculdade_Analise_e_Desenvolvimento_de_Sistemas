programa
{
	real tamanhoPintar, qntMetrosLata = (3 * 18), precoLata = 80.0, precoTotal
	funcao inicio()
	{
		escreva("Informe o tamanho a ser pintado em metros quadrados: ")
		leia(tamanhoPintar)

		tamanhoPintar = (tamanhoPintar/3)/18
		precoTotal = tamanhoPintar * precoLata
		escreva(" São ", tamanhoPintar, " Latas \n Total: ",precoTotal )
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 106; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */