programa
{
	inteiro soma, qtdPar
	funcao inicio()
	{
		soma = 0
		qtdPar = 0
		escreva("-------TODOS APROVADOS-------\n")
		escreva("Necessita de uma solução que calcule e mostre a soma dos números pares entre 100 e 200 (inclusive).\n")
		para(inteiro i = 100; i < 201; i++) {
			se((i % 2) == 0) {	
				qtdPar = qtdPar + 1
				escreva("Número par: "+ i + "\n")
				soma = soma + i
			}
		}
		escreva("A soma de todos os números pares de 100 a 200: "+ soma + "\n")
		escreva("A quantidade de números pares: " + qtdPar + "\n")
		escreva("-------TODOS APROVADOS-------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 573; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */