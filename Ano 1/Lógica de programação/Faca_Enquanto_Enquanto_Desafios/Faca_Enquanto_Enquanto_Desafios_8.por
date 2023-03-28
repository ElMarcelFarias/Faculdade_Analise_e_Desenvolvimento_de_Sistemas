programa
{
	inclua biblioteca Texto --> t
	cadeia gender, aux
	inteiro age, somaAge, contador, contadorInferior, contadorSuperior, contadorMaximo, grade
	funcao inicio()
	{
		contador = 0
		contadorInferior = 0
		contadorSuperior = 0
		contadorMaximo = 0
		somaAge = 0
		escreva("-----------------------SOFTWARE PARA FEEDBACK-----------------------\n")
		faca {
			contador++ 
			escreva("-Informe seu genero (Masculino - M / Feminino - F) ")
			leia(gender)

			gender = t.caixa_alta(gender)

			escreva("-Informe sua idade Ex.:(18) ")
			leia(age)

			somaAge = somaAge + age

			escreva("-Informe sua nota ao filme de 0 - 10 ")
			leia(grade)

			se (grade == 10) {contadorMaximo++}

			se ((gender == "M") e (grade < 5)) {contadorInferior++}

			se ((gender == "F") e (grade > 5)) {contadorSuperior++}

			escreva("-Deseja realizar outro feedback? (S - SIM / N - NÃO)")
			leia(aux)

			aux = t.caixa_alta(aux)
			limpa()
			
		} enquanto(aux != "N")

		limpa()
		somaAge = (somaAge/contador)

		escreva("-----------------------SOFTWARE PARA FEEDBACK-----------------------\n")
		escreva("-A média de idade.: "+ age+ "\n")
		escreva("-Total de notas 10.: "+ contadorMaximo+ "\n")
		escreva("-Total de homens com notas inferiores a 5 .: "+ contadorInferior+ "\n")
		escreva("-Total de mulheres com notas superior a 5 .: "+ contadorSuperior+ "\n")
		escreva("-----------------------SOFTWARE PARA FEEDBACK-----------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 863; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */