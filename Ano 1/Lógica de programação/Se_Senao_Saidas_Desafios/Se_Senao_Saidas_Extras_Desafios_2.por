programa
{
	caracter auxCalculos
	real base, altura, valorFinal
	funcao inicio()
	{
		
		escreva("______________________________________________\n")
		escreva("-SOFTWARE PARA CÁLCULO FÍSICOS")
		
		faca  {
			limpa()
			escreva("-CÁLCULOS FÌSICOS:  (Valores MAIUSCULOS!!!) \n")
			escreva("-[R] Área do Retângulo = base * altura \n")
			escreva("-[T] Área do Triângulo = base * altura/2 \n")
			escreva("-[C] Área do Circulo = 2 * pi * raio * raio\n")
			escreva("-[Q] Área do Quadrado = lado * lado\n")
			escreva("-[Z] Área do Trapézio = (lado maior + lado menor) * altura/2 \n")
			leia(auxCalculos)
			
		}  enquanto( (nao (auxCalculos == 'R')) e (nao (auxCalculos == 'T')) e (nao (auxCalculos == 'C')) e (nao (auxCalculos == 'Q')) e (nao (auxCalculos == 'Z')))

		
		escolha (auxCalculos) {
			caso 'R':		//testa se o valor é igual a 0
				limpa()
	
				faca {
					limpa()
					escreva ("-Informe a base do Retângulo: Ex.:(4) ")
					leia(base)
		
					escreva ("-Informe a altura do Retângulo: Ex.:(1.5) ")
					leia(altura)
				} enquanto ((base < 0) ou (altura < 0))
				limpa()
				valorFinal = base * altura
			
				escreva("-Fórmula [R] Área do Retângulo = base * altura \n")
				escreva("-Base: "+ base + "\n")
				escreva("-Altura: "+ altura + "\n")
				escreva("-Resultado: "+ valorFinal)
			pare
	
			caso 'T':		//testa se o valor é igual a 1
			limpa()
			escreva ("o valor é igual a 2")
			pare
	
			caso 'C':		//testa se o valor é igual a 2
			limpa()
			escreva ("o valor é igual a 3")
			pare
	
			caso 'Q':		//testa se o valor é igual a 2
			limpa()
			escreva ("o valor é igual a 4")
			pare
	
			caso 'Z':		//testa se o valor é igual a 2
			limpa()
			escreva ("o valor é igual a 5")
			pare
	
			caso contrario:
			escreva ("o valor não é igual a 0, 1 ou 2")
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1606; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */