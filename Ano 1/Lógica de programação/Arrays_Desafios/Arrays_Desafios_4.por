programa
{
	inteiro numbersArray[10], findNumberInt, posicaoIndexArray[10], qtdFind, aux, auxQtdFind
	logico findNumberBool = verdadeiro
	funcao inicio()
	{
		qtdFind = 0
		auxQtdFind = 0
		aux = 0
		escreva("-------------SOFTWATE VOLPATO Inser5ir e Procurar Dados-------------\n")		
		para(inteiro i = 0; i < 4; i++){
			escreva("-Informe o "+(i+1)+"° número: Ex.:(5) ")
			leia(numbersArray[i])
		}
		
		escreva("-Informe um número que deseja encontrar sua posição Ex.:(5) ")
		leia(findNumberInt)
		
		para(inteiro b = 0; b < 4; b++){
			se (numbersArray[b] == findNumberInt) {
				qtdFind++
				posicaoIndexArray[auxQtdFind] = b
				findNumberBool = falso	
				auxQtdFind++
			}
		}


		se (findNumberBool != verdadeiro) {
			para(inteiro c = 0; c < qtdFind; c++) {
				escreva("-Numero..: "+ findNumberInt + " está na posição...: "+ posicaoIndexArray[c] + "\n")
			}
		} senao {
			escreva("-Número não encontrado!!!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 594; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {posicaoIndexArray, 3, 42, 17}-{qtdFind, 3, 65, 7}-{aux, 3, 74, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */