programa
{
	inteiro numero, qtdMaior
	funcao inicio()
	{	
		qtdMaior = 0
		escreva("------------SOFTWARE DE CALCULO-------------\n")
		escreva("Elabore uma solução que a partir de 10 números informados\nMostre na tela quantos desses números são maiores do que 05. \n")
		
		para(inteiro i = 0; i < 10; i++) {
			
			escreva("-Informe o " + (i +1)+"° número Ex.:(2) ")
			leia(numero)
			limpa()
			se(numero > 5) {
				qtdMaior = qtdMaior + 1
			}
		}

		escreva("--------------SOFTWARE DE CALCULO---------------\n")
		escreva("-Quantidade de números maiores que 5: "+ qtdMaior + "\n")
		escreva("--------------SOFTWARE DE CALCULO---------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */