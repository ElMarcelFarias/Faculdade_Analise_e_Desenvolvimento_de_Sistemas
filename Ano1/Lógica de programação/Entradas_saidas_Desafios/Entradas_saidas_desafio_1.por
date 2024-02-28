programa
{

	//Desenvolver um algoritmo que terá por entrada dois valores. Você pode
	//chamar essas variáveis de A e B. A ideia é efetuar a troca dos valores contidos
	//em cada uma das variáveis. Ou seja, a variável A receberá o valor de B e
	//vice-versa. A ideia não é só apresentar os valores invertidos, é trocar os
	//valores contidos nas variáveis e daí sim efetuar a saída. Esse é um desafio
	//bastante importante para sua evolução enquanto desenvolvedor e analista de
	//softwares.

	cadeia a
	cadeia b
	cadeia aux
	
	funcao inicio()
	{
		escreva("Informe valor para o A: ")
		leia(a)

		escreva("Informe valor para o B: ")
		leia(b)

		aux = a
		a = b
		b = aux 


		escreva("Valor da A -> ", a, " Valor de B -> ", b)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */