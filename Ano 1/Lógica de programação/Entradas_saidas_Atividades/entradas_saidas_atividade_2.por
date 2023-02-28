programa
{
	
	funcao inicio()
	{
		real valorCompra, valorParcela;
		inteiro numParcelas;

		escreva("Valor total da compra: Ex.: (2.000)");
		leia(valorCompra);

		escreva("Deseja parcelar em quantas vezes? Ex.: (2)")
		leia(numParcelas);s

		valorParcela = valorCompra / numParcelas;

		escreva("Sua compra foi de " + valorCompra + " reais");
		escreva("Você optou por parcelar em " + numParcelas + " vezes");
		escreva("Sua parcela mensal " + " é de " + valorParcela + " reais");
		 
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */