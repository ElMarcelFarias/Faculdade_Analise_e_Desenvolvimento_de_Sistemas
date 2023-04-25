programa
//Construiremos um programa que receberá 3 (três) notas de um aluno e faremos o
//cálculo da média aritmética dessas notas. Caso o aluno tire uma nota maior do que 7
//(sete) ele está aprovado, porém, se a nota for abaixo ele estará reprovado. Um ponto
//importante é que a nota deverá ser arredondada em 2 (duas) casas. Ou seja,
//3,3333333 será convertido para 3,33, por exemplo.
{
	
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real notas[3]
		inteiro tipoMedia
		real mediaNotas = 0.0
		real peso[3]

		escreva("Esse programa tem a finalidade de calcular a média das notas dos alunos. ")

		para(inteiro i = 0; i < 3; i++) {
			notas[i] = insereNotas(i)	
		}

		escreva("\nQual o tipo de média você gostaria de calcular? Digite 1 para o cálculo aritmético; ou 2 para o cálculo ponderado: ")
		leia(tipoMedia)

		escolha(tipoMedia) {
			caso 1: 
				escreva("\nVocê selecionou o cálculo de média aritmética.")
				mediaNotas = mediaAritmetica(notas)	
			pare

			caso 2: 
				escreva("\nVocê selecionou o cálculo de média ponderada.")

				para(inteiro i = 0; i < 3; i++) {
					escreva("\nInforme o peso da "+(i+1)+"° nota: ")
					leia(peso[i])	
				}
				mediaNotas = mediaPonderada(notas, peso)
			pare

			caso contrario: 
				escreva("\nSelecione uma opção válida.")
			pare
		}
		mediaNotas = Matematica.arredondar(mediaNotas, 2)
		avaliacaoMedia(mediaNotas)
	}

	funcao real insereNotas(inteiro ordem) {
		
		real valorNotas
		
		escreva("\n Informe a "+ (ordem +1)+" notas: ")
		leia(valorNotas)
		
		retorne valorNotas
	}

	funcao real mediaAritmetica(real notas[]) {
		
		real somaNotas, mediaNotas
		somaNotas = 0.0

		para(inteiro i = 0; i < 3; i++) {				
			somaNotas += notas[i]
		}
		mediaNotas = (somaNotas/3)
		retorne mediaNotas	
		
	}


	funcao real mediaPonderada(real notas[], real peso[]) {
		
		real mediaNotas
		mediaNotas = (notas[0] * peso[0] + notas[1] * peso[1] + notas[2] * peso[2]) / (peso[0] + peso[1] + peso[2])

		retorne mediaNotas
		
	}


	funcao avaliacaoMedia(real mediFinal) {

		se(mediFinal >= 7) {
			escreva("\nEsse aluno foi aprovado com média "+ mediFinal + "!")	
		} senao {
			escreva("\nInfelizmente esse aluno foi reprovado com média "+ mediFinal + ".")	
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 462; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */