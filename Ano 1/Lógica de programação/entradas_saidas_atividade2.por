programa
{
	//Produzido po Otávio Henrique Vicente
	
	//Agora vamos criar um programa que simula uma venda de uma loja para um cliente 
	//final. Então, precisamos de duas informações: valor final da compra e a quantidade 
	//de parcelas. Ainda não aplicaremos questões como formas de pagamento e juros, 
	//por exemplo. Isso faremos a frente.
	
	funcao inicio()
	{
		real valorCompra, valorParcela;
		inteiro numParcelas;

		escreva("Valor total da compra: ");
		leia(valorCompra);

		escreva("Deseja parcelar em quantas vezes? ")
		leia(numParcelas);

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
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */