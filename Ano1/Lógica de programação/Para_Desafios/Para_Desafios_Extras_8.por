programa
{
	inteiro qtdEntrevistados, idade, qtdMaior
	funcao inicio()
	{
		qtdMaior = 0
		escreva("----------------SOFTWARE PARA CONTAGEM DE MAIORES DE IDADE----------------\n")
		escreva("-Quantidade de entrevistados Ex.:(20) \n")
		leia(qtdEntrevistados)

		para(inteiro i = 0; i < qtdEntrevistados; i++) {
			limpa()
			escreva("----------------SOFTWARE PARA CONTAGEM DE MAIORES DE IDADE----------------\n")
			escreva("-Informe a idade da "+ (i + 1)+"° pessoa \n")
			leia(idade)
			

			se (idade >= 18) {
				qtdMaior = qtdMaior + 1
			}
		}
		limpa()
		escreva("----------------SOFTWARE PARA CONTAGEM DE MAIORES DE IDADE----------------\n")
		escreva("-Quantidade de pessoas maiores de 18 anos..: " + qtdMaior + " <----- \n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 564; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */