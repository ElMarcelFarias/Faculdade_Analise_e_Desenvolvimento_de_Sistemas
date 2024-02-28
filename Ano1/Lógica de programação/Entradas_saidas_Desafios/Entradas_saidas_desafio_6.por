programa
{
	real  precoLata = 80.0, precoTotal
	inteiro tamanhoPintar, qntMetrosLata = (3 * 18)
	funcao inicio()
	{
		escreva("----SOFTWARE DE CÁLCULO DE METROS PARA PINTURA----")
		escreva("Informe o tamanho a ser pintado em metros quadrados: Ex.:(24) ")
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
 * @POSICAO-CURSOR = 317; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */