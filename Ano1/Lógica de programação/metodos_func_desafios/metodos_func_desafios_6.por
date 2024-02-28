programa
{
	
	funcao inicio()
	{
		inteiro numero
		logico verificarPrimoBool
		escreva("-----------------SOFTWARE VERIFICAÇÃO DE NUMEROS PRIMOS-----------------\n")
		
		numero = inserirNumero()
		verificarPrimoBool = verificarPrimos(numero)

		se (verificarPrimoBool) {
			escreva("é número primo")
		} senao {
			escreva("não é número primo.")	
		}
	}

	funcao inteiro inserirNumero() {
		inteiro numeroVerificar
		faca {
			escreva("-Informe um número positivo para verificação! ")
			leia(numeroVerificar)

			se(numeroVerificar <= 0 ) {
				escreva("ERRROR, INFORME UM NÚMERO POSITIVO!")	
			}
			
		}enquanto(numeroVerificar <= 0)
		retorne numeroVerificar
	}

	funcao logico verificarPrimos(inteiro numero) {
		logico bool = verdadeiro
		para(inteiro i = 2; i < numero; i++) {
			se ((numero % i == 0) ou (numero % 2 == 0)){
		 		bool = falso
			pare
			} senao {
				bool = verdadeiro
			}
		}

		retorne bool
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 791; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */