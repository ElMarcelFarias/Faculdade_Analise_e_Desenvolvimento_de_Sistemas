programa
{
	//Produzido por Otávio Hnerique Vicente
	
	//Vamos começar a fazer alguns cálculos um pouquinho mais robustos nessa 
	//atividade. Vamos solicitar a compra e a revenda de um produto. Como uma loja 
	//por exemplo. Assim, você solicitará o valor de compra de um produto. Em seguida, 
	//fará o cálculo do valor de venda, acrescentando 35% de lucro no valor original. 
	//Lembremos que 35% representa 0,35 ou 35/100 de um valor ou uma quantidade.

	funcao inicio()
	{
		real valorCompra, valorVenda;

		escreva("Qual o valor de compra do produto? ");
		leia(valorCompra);

		valorVenda = valorCompra + (valorCompra * 0.35);

		escreva("Valor de venda recomendado: " + valorVenda);
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 693; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */