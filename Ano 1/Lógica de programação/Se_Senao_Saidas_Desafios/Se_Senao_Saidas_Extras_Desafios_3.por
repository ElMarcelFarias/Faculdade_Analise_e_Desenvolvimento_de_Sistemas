programa
{
	real nota0, nota1, nota2, notaRec, media
	cadeia situacao, nome
	
	funcao inicio()
	{
		escreva("-------SOFTWARE TODOSAPROVADOS (MÉDIA)---------\n")
		escreva("Informe o nome do estudante: ")
		leia(nome)

		
		escreva("Informe a 1° Nota: Ex.:(7.8) ")
		leia(nota0)
		
		 
		escreva("Informe a 2° Nota: Ex.:(7.8) ")
		leia(nota1)
		

		
		escreva("Informe a 3° Nota: Ex.:(7.8) ")
		leia(nota2)
		limpa()
		
		media = ((nota0 + nota1 + nota2)/3)

		se(media < 6.00) {
			
			escreva("Informe a nota da recuperação: Ex.:(7.8) ")
			leia(notaRec)

			se(notaRec < 6.00){
				situacao = "Você está reprovado."
			} senao{
				media = 6.00
				situacao = "Você está aprovado"
			}

		} senao {
			situacao = "Você está aprovado"
		}
		limpa()
		escreva("--------------------------------------------------")
		escreva("-Nome: " + nome + "\n")
		escreva("-1° Nota: " + nota0 + "\n")
		escreva("-2° Nota: " + nota1 + "\n")
		escreva("-3° Nota: " + nota2 + "\n")
		escreva("-Média  : " + media + "\n")
		se (notaRec > 0) {
			escreva("-4° Nota: " + notaRec + "\n")
		}
		escreva("-Situação: " + situacao + "\n")
		escreva("--------------------------------------------------")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 739; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */