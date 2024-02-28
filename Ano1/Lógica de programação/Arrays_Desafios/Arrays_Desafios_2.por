programa
{
	real primeiraNota[5], segundaNota[5], mediaNotas[5]
	
	funcao inicio()
	{
		escreva("---------------SOFTWARE MÉDIA ESCOLAR (BIMESTRE)---------------\n")

		para(inteiro i=0; i < 5; i++) {
			escreva((i + 1)+"° Aluno \n")
			escreva("Informe a primeira nota do bimestre Ex.:(8.5)")
			leia(primeiraNota[i])

			escreva("Informe a segunda nota do bimestre Ex.:(8.5)")
			leia(segundaNota[i])

			mediaNotas[i] = (primeiraNota[i] + segundaNota[i]) / 2
				
		}
		limpa()

		para(inteiro i = 0; i < 5; i++) {
			escreva("-----------------Média de notas:------------------\n")
			escreva(" ")
			escreva("-Média do "+(i + 1)+"° Aluno: "+ mediaNotas[i]+" \n")
			escreva(" ")
			escreva("-----------------Média de notas:------------------\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 480; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */