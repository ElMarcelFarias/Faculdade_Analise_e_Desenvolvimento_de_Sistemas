programa
{
	real valorFatura, percJuros, valorMensal, valorPossivel, valorJuros, somaFatura
	inteiro contador
	logico aux
	funcao inicio()
	{
		contador = 0
		somaFatura = 0.00
		aux = verdadeiro
		escreva("-----------------------SENAI BANK-----------------------\n")

		escreva("-Informe o valor da fatura do seu cartão Ex.:(5.000) ")
		leia(valorFatura)

		
		faca {
			escreva("-Informe o valor possível para pagar ao mês Ex.:(800.00) ")
			leia(valorPossivel)
	
			somaFatura = valorFatura - valorPossivel
			escreva("-Informe os juros aplicados ao mês Ex.:(8) ")
			leia(percJuros)
			
			valorJuros = somaFatura * (percJuros / 100)

			se (valorJuros > valorPossivel) {
				escreva("VALOR MÍNIMO ("+valorJuros+") \n")	
			}
			
		} enquanto (valorJuros > valorPossivel)


		escreva("\nFatura mês 1°: "+ valorFatura+"\n")
		
		enquanto (aux) {
			contador++

			valorFatura = valorFatura - valorPossivel // 3000 - 500
			valorJuros = valorFatura * (percJuros / 100) // 2500 * 0,05 = 125

			valorFatura = valorFatura + valorJuros // 2500 + 125

			se (valorFatura < 0) {
				aux = falso
				pare
			}

			escreva("\nFatura mês "+ (contador + 1) + ": "+ valorFatura+"\n")
			
		}

		escreva("O valor será pago em: " + contador + " meses.")
		escreva("\n")
		escreva("-----------------------SENAI BANK-----------------------\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1049; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */