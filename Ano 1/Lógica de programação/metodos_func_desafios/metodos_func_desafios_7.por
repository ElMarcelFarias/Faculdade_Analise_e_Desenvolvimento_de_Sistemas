programa
{
	
	funcao inicio()
	{
		inteiro numeroTriangulos[3]
		escreva("----------------SOFTWARE PARA VERIFICAR AREA DO TRIANGULO E QUAL É----------------\n")
		
		para(inteiro i = 0; i < 3; i++) {
			numeroTriangulos[i] = inserirNumeros()
		}

		verificarTriangulo(numeroTriangulos)
		
	}

	funcao inteiro inserirNumeros(){
		inteiro numero 
		faca{
			escreva("-Informe um número..:(5) ")
			leia(numero)

			se(numero <= 0) {
				escreva("-ERROR INFORME UM NÚMERO POSITIVO MAIOR QUE ZERO")	
			}
			
		}enquanto(numero <= 0)

		retorne numero
	}

	funcao verificarTriangulo(inteiro numeroTriangulos[]) {
		inteiro aux = 0
		cadeia auxMsg
		para(inteiro i = 0; i < 3; i++) {
			para(inteiro x = 0; x < i; x++) {
				se (numeroTriangulos[i] == numeroTriangulos[x]) {
					aux++
				}
			}	
		}
		auxMsg = "- Triângulo escaleno: todos os lados do triângulo são diferentes"
		se(aux >= 1) {
			auxMsg = "- Triângulo equilátero: possui os 3 (três) lados do triângulo iguais"
			se(aux == 1) {
				auxMsg = "- Triângulo isósceles: possui os 2 (dois) lados do triângulo iguais"
			}
		} 

		escreva(auxMsg)
	}

	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 798; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeroTriangulos, 6, 10, 16}-{aux, 33, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */