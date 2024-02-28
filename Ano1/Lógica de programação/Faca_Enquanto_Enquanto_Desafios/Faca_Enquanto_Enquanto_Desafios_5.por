programa
{
	inclua biblioteca Texto --> t
	real peso, altura, imc
	cadeia aux
	funcao inicio()
	{
		escreva("-----------------SOFTWARE IMC SÓENGORDA LTDA-----------------\n")

		faca {
			limpa()
			escreva("-Informe o seu peso atualmente Ex.:(68.5) ")
			leia(peso)

			escreva("-Informe sua altura atualmente Ex.:(1.72) ")
			leia(altura)
				
			imc = peso / (altura * altura)
			limpa()

			escreva("-Este é seu IMC: " + imc+"\n")
			escreva("Deseja realizar o cálculo novamente? Ex.: (S - SIM / N - NÃO) ")
			leia(aux)

			aux = t.caixa_alta(aux)
			
			escreva("-----------------SOFTWARE IMC SÓENGORDA LTDA-----------------\n")
			
		} enquanto (aux != "N")
		
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 187; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */