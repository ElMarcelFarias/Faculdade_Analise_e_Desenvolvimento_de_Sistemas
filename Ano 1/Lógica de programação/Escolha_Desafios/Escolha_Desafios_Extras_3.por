programa
{
	cadeia nomeProduto
	inteiro codProduto, qtdProduto
	real valorUnit, valorFinal
	funcao inicio()
	{
		escreva("--------------------------DELIVERY DO SENAI------------------------\n")
		escreva("-CATÁLOGO\n")
		escreva("-Código: 100 - Produto: Cachorro quente - Preço Unitário (R$) R$1,70\n")
		escreva("-Código: 101 - Produto: Bauru Simples   - Preço Unitário (R$) R$2,30\n")
		escreva("-Código: 102 - Produto: Bauru com ovo   - Preço Unitário (R$) R$2,60\n")
		escreva("-Código: 103 - Produto: Hamburguer      - Preço Unitário (R$) R$2,40\n")
		escreva("-Código: 104 - Produto: Cheeseburguer   - Preço Unitário (R$) R$2,50\n")
		escreva("-Código: 105 - Produto: Refrigerante    - Preço Unitário (R$) R$1,00\n")
		escreva("--------------------------DELIVERY DO SENAI------------------------\n")
		escreva("/n")
		escreva("Informe o código do produto desejado! Ex.:(101)\n")
		leia(codProduto)

		escreva("Informe a quantidade do produto desejado! Ex.:(2)\n")
		leia(qtdProduto)

		escolha (codProduto) {
			caso 100: 
				nomeProduto = "Cachorro quente"
				valorUnit = 1.70
			pare

			caso 101: 
				nomeProduto = "Bauru Simples"
				valorUnit = 2.30
			pare

			caso 102:
				nomeProduto = "Bauru com ovo" 
				valorUnit = 2.60
			pare

			caso 103:
				nomeProduto = "Hamburguer"
				valorUnit = 2.40
			pare

			caso 104:
				nomeProduto = "Cheeseburguer"
				valorUnit = 2.50
			pare

			caso 105:
				nomeProduto = "Refrigerante"
				valorUnit = 1.00
			pare

			caso contrario:
				nomeProduto = "ERROR nomeProduto!"
				valorUnit = 0.00
			pare
				
		}

		valorFinal = valorUnit * qtdProduto
		limpa()

		
		escreva("--------------------------DELIVERY DO SENAI------------------------\n")
		escreva("-PEDIDO\n")
		escreva("-Nome do produto: "+ nomeProduto + "\n")
		escreva("-Valor Unitário do produto: "+ valorUnit + "\n")
		escreva("-Quantidade informada: "+ qtdProduto + "\n")
		escreva("-Valor Final da compra: "+ valorFinal + "\n")
		escreva("--------------------------DELIVERY DO SENAI------------------------\n")
	

		
		
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 808; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */