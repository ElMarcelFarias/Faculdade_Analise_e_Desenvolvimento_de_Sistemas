programa
{
	inteiro numero, soma
	funcao inicio()
	{
		soma = 0
		escreva("----------SOFTWARE DE CÁLCULO--------\n")
		escreva("-Software que peça 5 números e a soma no final do software \n")

		para(inteiro i = 0; i < 5; i++) {
			
			escreva("Informe o " + (i+1)+ "° número Ex.:(5) ")
			leia(numero)
			soma = soma + numero
			limpa()
		}
		escreva("----------SOFTWARE DE CÁLCULO--------\n")
		escreva("-Valor Final da soma: "+soma+"\n")
		escreva("----------SOFTWARE DE CÁLCULO--------\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */