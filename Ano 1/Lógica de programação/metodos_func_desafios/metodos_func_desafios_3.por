programa
//Faça um programa que a partir do valor de uma compra, faça o cálculo de um desconto para o
//usuário. O programa deve solicitar o valor total da compra por meio de um método, que deverá
//retorná-lo. Um método deve ser criado para receber o valor da compra e mostrar o valor final
//com desconto, considerando:

//● Até R$100 - sem desconto, o valor permanece o mesmo
//● De R$100,01 a R$200 - desconto de 20%
//● Acima de R$200 - desconto de 30%
{

	
	funcao inicio()
	{
		real valorTotal
		escreva("-------------------MERCADINHO DA FUNÇÃO COM JUROS-------------------\n")
		
		valorTotal = inserirValorCompra()
		calculaCompra(valorTotal)
	}

	funcao real inserirValorCompra() {
		real valorCompraTotal
		escreva("-Informe o valor total da sua compra, por favor Ex..(2.350) ")
		leia(valorCompraTotal)	

		retorne valorCompraTotal
	}

	funcao calculaCompra(real valorTotal) {
		real valorDesc 
		
		se(valorTotal > 100) {
			valorDesc = valorTotal * 0.20	
			valorTotal = valorTotal - valorDesc
		} senao se (valorTotal > 200) {
			valorDesc = valorTotal * 0.30	
			valorTotal = valorTotal - valorDesc
		} 

		escreva("-Valor final da sua compra...: "+ valorTotal)
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 895; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */