programa
{
	caracter auxCalculos
	real base, altura, lado, raio, ladoMaior, ladoMenor, valorFinal
	funcao inicio()
	{
		
		escreva("______________________________________________\n")
		escreva("-SOFTWARE PARA CÁLCULO FÍSICOS")
		
		faca  {
			limpa()
			escreva("-CÁLCULOS FÌSICOS:  (Valores MAIUSCULOS!!!) \n")
			escreva("-[R] Área do Retângulo = base * altura \n") 
			escreva("-[T] Área do Triângulo = base * altura/2 \n")
			escreva("-[C] Área do Circulo   = 2 * pi * raio * raio\n")
			escreva("-[Q] Área do Quadrado  = lado * lado\n")
			escreva("-[Z] Área do Trapézio  = (lado maior + lado menor) * altura/2 \n")
			leia(auxCalculos)
			
		}  enquanto( (nao (auxCalculos == 'R')) e (nao (auxCalculos == 'T')) e (nao (auxCalculos == 'C')) e (nao (auxCalculos == 'Q')) e (nao (auxCalculos == 'Z')))

		
		escolha (auxCalculos) {
			caso 'R':		
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
				escreva("---------------------------------------------------\n")
				escreva("-Fórmula [R] Área do Retângulo = base * altura \n")
				escreva("-Base: "+ base + "\n")
				escreva("-Altura: "+ altura + "\n")
				escreva("-Resultado: "+ valorFinal)
				escreva("\n---------------------------------------------------")
			pare
	
			caso 'T':	
				limpa()	
				faca {
					limpa()
					escreva ("-Informe a base do Triângulo: Ex.:(4) ")
					leia(base)		
		
					escreva ("-Informe a altura do Triângulo: Ex.:(1.5) ")
					leia(altura)
				} enquanto ((base < 0) ou (altura < 0))
				limpa()
				valorFinal = (base * altura)/2
				escreva("---------------------------------------------------\n")
				escreva("-Fórmula [T] Área do Triângulo = base * altura \n")
				escreva("-Base: "+ base + "\n")
				escreva("-Altura: "+ altura + "\n")
				escreva("-Resultado: "+ valorFinal)
				escreva("\n---------------------------------------------------")
			pare

			
	
			caso 'C':	
				limpa()	
				faca {
					limpa()
					escreva ("-Informe o raio do Circulo: Ex.:(4) ")
					leia(raio)	
				} enquanto (raio < 0)
				limpa()
				valorFinal = (2 * 3.14)*(raio*raio)
				escreva("---------------------------------------------------\n")
				escreva("-Fórmula [C] Área do Circulo = 2 * pi * raio * raio \n")
				escreva("-Raio: "+ raio + "\n")
				escreva("-Resultado: "+ valorFinal)
				escreva("\n---------------------------------------------------")
			pare
	
			caso 'Q':		
				limpa()	
				faca {
					limpa()
					escreva ("-Informe o lado do Quadrado: Ex.:(4) ")
					leia(lado)		
				} enquanto ((lado < 0))
				limpa()
				valorFinal = (lado * lado)
				escreva("---------------------------------------------------\n")
				escreva("-Fórmula [Q] Área do Quadrado = lado * lado \n")
				escreva("-Lado: "+ lado + "\n")
				escreva("-Resultado: "+ valorFinal)
				escreva("\n---------------------------------------------------")
			pare
	
			caso 'Z':		
				limpa()	
				faca {
					limpa()
					escreva ("-Informe o Lado Maior do trapezio: Ex.:(4) ")
					leia(ladoMaior)

					escreva ("-Informe o Lado Menor do trapezio: Ex.:(4) ")
					leia(ladoMenor)

					escreva ("-Informe a altura do trapezio: Ex.:(4) ")
					leia(altura)
					
				} enquanto ((ladoMaior < 0) ou (ladoMenor < 0) ou (altura < 0))
				limpa()
				valorFinal = (ladoMaior + ladoMenor) * altura/2
				escreva("----------------------------------------------------------------------\n")
				escreva("-Fórmula [Z] Área do Trapezio = (lado maior + lado menor) * altura/2 \n")
				escreva("-Lado maior: "+ ladoMaior + "\n")
				escreva("-Lado menor: "+ ladoMenor + "\n")
				escreva("-Resultado: "+ valorFinal)
				escreva("\n--------------------------------------------------------------------")
			pare
	
			caso contrario:
			escreva ("o valor não é igual a R, T, C, Q ou a Z")
		}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */