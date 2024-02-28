programa
{
	
	funcao inicio()
	{
		inteiro vetor[10], posicao = 0, valor
		logico encontrou = falso

		para(inteiro i = 0; i < 10; i++){
			escreva((i+1)+"° Número: ")
			leia(vetor[i])
			escreva("\n")
		}
		limpa()

		escreva("Digite um valor para encontrar no vetor: ")
		leia(valor)

		limpa()

		para(inteiro i = 0; i < 10; i++) {
			se (valor == vetor[i]) {
				posicao = i
				encontrou = verdadeiro	
			}	
		}

		se(nao encontrou) {
			escreva("O valor "+ valor + " não foi encontrado no vetor.")
		} senao {
			escreva("O valor "+valor+" foi encontrado na posição "+ posicao)	
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 303; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */