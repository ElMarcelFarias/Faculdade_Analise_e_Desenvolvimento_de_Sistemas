programa
{
	inclua biblioteca Texto --> t

	real salario, salarioI,maiorSalario,  qtdFilhos, totalSalario, porcentagemMenor
	inteiro contador,  totalFilhos, contadorMenor
	cadeia aux
	funcao inicio()
	{
		contador = 0
		totalSalario = 0.0
		totalFilhos = 0
		salarioI = 0.00
		contadorMenor = 0
		
		escreva("--------------XICO City (Gestão Salárial)--------------\n")
		

		faca {
			contador++
			escreva("-Informe o seu salário Ex.:(2.600) ")
			leia(salario)

			se(salario < 150.0) {
				contadorMenor = contadorMenor + 1
			}

			totalSalario = totalSalario + salario
			

			escreva("-Informe a quantidade de filhos Ex.:(5) ")
			leia(qtdFilhos)

			 totalFilhos =  totalFilhos + qtdFilhos

			 se (salario > salarioI) {
			 	maiorSalario = salario
		 	}
		 	
			salarioI = salario

			escreva("Deseja realizar novamente? (S - SIM / N - NÃO)")
			leia(aux)

			aux = t.caixa_alta(aux)
			limpa()
			
			
		} enquanto(aux !="N")

		totalSalario = totalSalario/contador
		totalFilhos = totalFilhos/contador
		porcentagemMenor = ( contadorMenor * 100) / contador
		limpa()
		
		

		
		escreva("--------------XICO City (Gestão Salárial)--------------\n")
		escreva("-Média de salario da população.: " + totalSalario + "\n")
		escreva("-Média de filhos.: " + totalFilhos + "\n")
		escreva("-Maior salário dos habitantes.: " + maiorSalario + "\n")
		escreva("-Porcentagem menor que R$150.00 .: " + porcentagemMenor + "\n")
		escreva("--------------XICO City (Gestão Salárial)--------------\n")
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 979; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */