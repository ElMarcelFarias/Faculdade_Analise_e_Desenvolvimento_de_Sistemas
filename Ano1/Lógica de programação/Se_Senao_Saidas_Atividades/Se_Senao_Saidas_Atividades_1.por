programa
{
	//Construiremos um programa que perguntará ao usuário a maioridade civil do país que
	//ele mora. Depois, ele vai informar sua idade. Nossa missão será dizer apenas se ele
	//é ou não maior de idade

	inteiro maioridadeCivil
	inteiro idade
	

	funcao inicio()
	{
		escreva("Olá! \n")
		escreva("Nesse programa verificamos se você é maior de idade ou não. \n ")
 
		escreva("Informe a maioridade civil do país que você vive: Ex.: (21)  ")
		leia(maioridadeCivil)
		escreva("\n")

		se (maioridadeCivil <= 0) {
			escreva("A maioridade civil informada é negativa. Por isso, o programa será encerrado. ")	
		} senao {
			escreva("Informe a sua idade: Ex.:(17) ")
			leia(idade)
			escreva("\n")

			se (idade <= 0) {
				escreva("A idade informada é negativa. Por isso, o programa será encerrado. ")	
			} senao {
				se (idade < maioridadeCivil)	{
					escreva("Você é menor de idade ")	
				} senao {
					escreva("Você é maior de idade ")	
				}
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 862; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */