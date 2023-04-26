programa
{
	
	funcao inicio()
	{
		inteiro numero
		escreva("-------------SOFTWARE PARA PRATICAR METODO E FUNÇÃO - METODO DENTRO DE METODO-------------\n")
		
		numero = verificarNumero(inserirNumero())
	}

	funcao inteiro inserirNumero() {
		inteiro numeroInserir
		
		escreva("-Informe o número..: Ex(2)")
		leia(numeroInserir)	

		retorne numeroInserir
	}

	funcao inteiro verificarNumero(inteiro numero) {
		se (numero > 0) {
			escreva("-Este número é positivo!! ")
			retorne numero	
		} senao se (numero == 0) {
			escreva("-Este número é zerado!! ")
			retorne numero		
		}
		escreva("-Este número é negativo!! ")
		retorne numero		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 477; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 6, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */