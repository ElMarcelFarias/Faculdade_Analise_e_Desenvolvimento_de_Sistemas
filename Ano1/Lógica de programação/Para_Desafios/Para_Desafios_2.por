programa
{
	inteiro idade, qtdMaior, qtdMenor, qtdPessoa
	funcao inicio()
	{
		qtdMaior = 0
		qtdMenor = 0

		escreva("Informe quantas pessoas seram verificadas. ")
		leia(qtdPessoa)
		
		para(inteiro i = 0; i < qtdPessoa; i++) {

			escreva("Informe a idade da "+ (i + 1)+"° pessoa ")
			leia(idade)
			limpa()

			se(idade >= 18) {
				qtdMaior = qtdMaior + 1
			} senao {
				qtdMenor = qtdMenor + 1
			}
			
		}

		escreva("A quantidade de pessoas maiores > de 18 anos : " + qtdMaior + "\n")
		escreva("A quantidade de pessoas menores < de 18 anos : " + qtdMenor + "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 290; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */