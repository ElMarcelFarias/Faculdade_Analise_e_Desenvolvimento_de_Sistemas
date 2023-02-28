programa
{
	//Agora, faremos uma solução para um mercado. Eles vendem maçãs e querem aplicar
	//um desconto para o cliente. O preço normal das maçãs é R$ 1.30. Porém, a partir de
	//uma dúzia, ou 12 maçãs, é pago apenas R$ 1.00 por unidade. A ideia nossa é mostrar
	//quantas maçãs foram compradas e qual o valor que será pago ao final.
	
	funcao inicio()
	{
		inteiro qtdMacas
		real valorMacas, valorFinal

		escreva("Olá\n")
		escreva("Nesse programa faremos o cálculo do valor de venda de maças. \n")

		escreva("Informe a quantidade de maças vendidas: ")
		leia(qtdMacas)
		escreva("\n")

		se(qtdMacas <= 0) {
			escreva("A quantidade de maças vendidas é zero ou negativa. Por isso, o programa será encerrado.")	
		} senao {
			se (qtdMacas < 12) {
				valorMacas = 1.30
			} senao {
				valorMacas = 1.00	
			}	

			valorFinal = qtdMacas * valorMacas

			escreva("O valor final da venda das maças é de R$ "+ valorFinal)
		}
		escreva("\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */