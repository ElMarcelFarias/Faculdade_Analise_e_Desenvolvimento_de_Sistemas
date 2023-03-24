programa
{
	inclua biblioteca Texto --> t
	inteiro age, totalAge, contadorMedia
	real salarioM, salarioF, TotalsalarioF, TotalsalarioM, totalGrupo
	cadeia gender, choose
	funcao inicio()
	{
		logico aux = verdadeiro
		contadorMedia = 0
		TotalsalarioF = 0.00
		TotalsalarioM = 0.00
		totalAge = 0
		
		escreva("-------------GESTÃO SOFTWARE-------------\n")
		enquanto(aux) {
			contadorMedia++
			
			escreva("-Informe a sua idade Ex.:(35) ")
			leia(age)
			totalAge = totalAge + age

			escreva("-Informe seu gênero Ex.:(M - Masculino F - Feminino) ")
			leia(gender)
			
			
			gender = t.caixa_alta(gender)

			se (gender == "M") {
			 	escreva("-Informe seu salário masculino Ex.:(3.000) ")
				leia(salarioM)
				TotalsalarioM = TotalsalarioM + salarioM
			} senao {
				escreva("-Informe seu salário feminino Ex.:(3.000) ")
				leia(salarioF)
				TotalsalarioF = TotalsalarioF + salarioF
			}
			

			escreva("-Deseja finalizar o Aplicativo digite (“Finalizar”) caso contrario, digite qualquer caracter! ")
			leia(choose)

			choose = t.caixa_alta(choose)

			se(choose == "FINALIZAR") {
				aux = falso
			} 
		
		}
		limpa()
		totalGrupo = (TotalsalarioM + TotalsalarioF)/contadorMedia
		age = (totalAge/contadorMedia)
		TotalsalarioF = (TotalsalarioF/contadorMedia)
		TotalsalarioM = (TotalsalarioM/contadorMedia)

		escreva("---------------------GESTÃO SOFTWARE-----------------------\n")
		escreva("-\n")
		escreva("-Média de salário do grupo .: " + totalGrupo + "\n")
		escreva("-Média de idades .: " + age + "\n")
		escreva("-Média de salários do gênero Feminino .: " + TotalsalarioF + "\n")
		escreva("-Média de salários do gênero Masculino .: " + TotalsalarioM + "\n")
		escreva("-\n")
		escreva("---------------------GESTÃO SOFTWARE-----------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 764; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */