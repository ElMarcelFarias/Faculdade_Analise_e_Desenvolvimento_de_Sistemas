programa
{

	inteiro anoAtual, anoNasc, idade
	funcao inicio()
	{
		escreva(" Digite o ano em que estamos: ")
		leia(anoAtual)

		escreva(" Digite o ano em que você nasceu: ")
		leia(anoNasc)

		idade = anoAtual - anoNasc 

		se (idade >=18) {
			escreva("\n Sua idade é " + idade + "\n Você é maior de idade")	
		} senao se (idade >= 0) {
			escreva("\n Sua idade é " + idade + "\n Você não é maior de idade!!!")		
		} senao {
			escreva("\n Está pessoa não nasceu ainda")		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 484; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */