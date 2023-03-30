programa
{
	inteiro numbersArray[10], findNumberInt, posicaoIndexArray[10], qtdFind, aux
	logico findNumberBool = verdadeiro
	funcao inicio()
	{
		qtdFind = 0
		aux = 0
		escreva("-------------SOFTWATE VOLPATO Inser5ir e Procurar Dados-------------\n")		
		para(inteiro i = 0; i < 3; i++){
			escreva("-Informe o "+(i+1)+"° número: Ex.:(5) ")
			leia(numbersArray[i])
		}
		
		escreva("-Informe um número que deseja encontrar sua posição Ex.:(5) ")
		leia(findNumberInt)
		
		para(inteiro b = 0; b < 3; b++){
			se (numbersArray[b] == findNumberInt) {
				qtdFind++
				posicaoIndexArray[b] = b
				findNumberBool = falso	
			}
		}


		se (findNumberBool != verdadeiro) {
			para(inteiro c = 0; c < qtdFind; c++) {
				aux = c + 1
				escreva("-Numero..: "+ findNumberInt + " está na posição...: "+ posicaoIndexArray[aux] + "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 448; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {posicaoIndexArray, 3, 42, 17};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */