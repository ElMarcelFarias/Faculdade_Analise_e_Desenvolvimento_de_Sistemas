programa
{
	inteiro formaCombustivel
	real qtdCombustivel, valorCombustivel, valorFinal, valorGasolina = 5.09, valorAlcool = 4.39, valorDiesel =  6.39
	cadeia tipoComb, error
	
	funcao inicio()
	{
		

		escreva("______SOFTWARE PARA POSTO DE GASOLINA______\n")

		escreva("------Lista de Preços\n")
		escreva("------Preço do litro da gasolina é R$ 5.09\n")
		escreva("------Preço do litro do álcool é R$ 4.39\n")
		escreva("------Preço do litro do diesel é R$ 6.39\n")

		faca {
			escreva("\n")
			escreva("------Informe qual combustível utilizar?\n")
			escreva("\n")
			escreva("------[1] Gasolina\n")
			escreva("------[2] Álcool\n")
			escreva("------[3] Diesel\n")
			escreva("\n")
			leia(formaCombustivel)

		} enquanto( (nao (formaCombustivel == 1)) e (nao (formaCombustivel == 2)) e (nao (formaCombustivel == 3)))
		
		

		escreva("------Quantos litros de Combustível \n")
		leia(qtdCombustivel)

		se (formaCombustivel == 2) {
			tipoComb = "Gasolina"
			se((qtdCombustivel > 0) e (qtdCombustivel <= 20))  {
				valorCombustivel = (valorAlcool * 0.03)
			} senao se (qtdCombustivel > 20) {
				valorCombustivel = (valorAlcool * 0.05)
			} senao {
				error = "----Quantidade de Combustível negativa [ERROR]"
			}
		}

		se (formaCombustivel == 1) {
			tipoComb = "Álcool"
			se((qtdCombustivel > 0) e (qtdCombustivel <= 20))  {
				valorCombustivel = (valorGasolina * 0.04)
			} senao se (qtdCombustivel > 20) {
				valorCombustivel = (valorGasolina * 0.06)
			} senao {
				error = "----Quantidade de Combustível negativa [ERROR]"
			}
		}

		se (formaCombustivel == 3) {
			tipoComb = "Diesel"
			se(qtdCombustivel > 0) {
				valorCombustivel = (valorDiesel * 0.02)
			} senao {
				error = "----Quantidade de Combustível negativa [ERROR]"	
			}
		}

		valorFinal = valorCombustivel * qtdCombustivel

		
		escreva("___________________________________________\n")
		escreva("\n")
		escreva("\n")

		escreva("----Valor Final do abastecimento: "+ valorFinal+"\n" )
		escreva("----Tipo do combustível: "+tipoComb+"\n")
		escreva("----Valor Final do abastecimento: \n")
		escreva(error)

		

		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 829; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */