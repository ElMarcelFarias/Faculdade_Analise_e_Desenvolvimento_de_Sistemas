programa
{
	inteiro numero[3], maiorNumero
	funcao inicio()
	{
		escreva("--------------------------SOFTWARE PARA PRATICAR METODO E FUNÇÃO QUAL É O MAIRO--------------------------\n")
		para(inteiro i = 0; i < 3; i++) {
			numero[i] = inserirNumero(i)
		}

		verificarMaior(numero)
		
		
	}

	funcao inteiro inserirNumero(inteiro ordem) {
		inteiro nroInserir
		
		escreva("-Informe o "+ (ordem + 1)+"° número Ex.:(5) ")
		leia(nroInserir)

		retorne nroInserir
	}

	funcao verificarMaior(inteiro numerosVerif[]) {
		maiorNumero = 0
		para(inteiro i = 0; i < 3; i++) {
			se (numerosVerif[i] > maiorNumero)  {
				maiorNumero = numerosVerif[i]
			}
		}

		escreva("-Maior número: "+ maiorNumero)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 447; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 3, 10, 6}-{maiorNumero, 3, 21, 11};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */