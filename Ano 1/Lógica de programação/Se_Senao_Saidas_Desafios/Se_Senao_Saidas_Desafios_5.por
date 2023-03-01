programa
{
	real qtdCombustivel, valorCombustivel, valorFinal, valorGasolina = 5.09, valorAlcool = 4.39, valorDiesel =  6.39
	cadeia tipoComb, error, formaCombustivel
	
	funcao inicio()
	{
		

		escreva("--------SOFTWARE PARA POSTO DE GASOLINA---------\n")

		escreva("------Lista de Preços\n")
		escreva("------Preço do litro da gasolina é R$ 5.09\n")
		escreva("------Preço do litro do álcool é   R$ 4.39\n")
		escreva("------Preço do litro do diesel é   R$ 6.39\n")

		faca {
			escreva("\n")
			escreva("------Informe qual combustível utilizar?\n")
			escreva("\n")
			escreva("------[G] Gasolina\n")
			escreva("------[A] Álcool\n")
			escreva("------[D] Diesel\n")
			escreva("\n")
			leia(formaCombustivel)

		} enquanto( (nao (formaCombustivel == "A")) e (nao (formaCombustivel == "G")) e (nao (formaCombustivel == "D")))
		
		

		escreva("------Quantos litros de Combustível \n")
		leia(qtdCombustivel)

		se (formaCombustivel == "G") {
			tipoComb = "Gasolina"
			se((qtdCombustivel > 0) e (qtdCombustivel <= 20))  {
				valorCombustivel =  valorGasolina -  (valorGasolina * 0.03) 
			} senao se (qtdCombustivel > 20) {
				valorCombustivel = valorGasolina  - (valorGasolina * 0.05) 
			} senao {
				valorCombustivel = 0.00
				error = "----Quantidade de Combustível negativa [ERROR]"
			}
		}

		se (formaCombustivel == "A") {
			tipoComb = "Álcool"
			se((qtdCombustivel > 0) e (qtdCombustivel <= 20))  {
				valorCombustivel =  valorAlcool - (valorAlcool * 0.04) 
			} senao se (qtdCombustivel > 20) {
				valorCombustivel =  valorAlcool - (valorAlcool * 0.06)
			} senao {
				valorCombustivel = 0.00
				error = "----Quantidade de Combustível negativa [ERROR]"
			}
		}

		se (formaCombustivel == "D") {
			tipoComb = "Diesel"
			se(qtdCombustivel > 0) {
				valorCombustivel =  valorDiesel - (valorDiesel * 0.02) 
			} senao {
				valorCombustivel = 0.00
				error = "----Quantidade de Combustível negativa [ERROR]"	
			}
		}

		
		
		valorFinal = valorCombustivel * qtdCombustivel
		
		escreva("_______________________________________________\n")
		escreva("\n")
		escreva("----Valor Final do abastecimento: "+ valorFinal+"\n" )
		escreva("----Tipo do combustível: "+tipoComb+"\n")
		escreva(error+"\n")
		escreva("_______________________________________________\n")

		

		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1129; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */