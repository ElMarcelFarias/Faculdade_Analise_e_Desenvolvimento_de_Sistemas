programa
{
	inteiro idade, soma, qtdFuncionario, media
	cadeia faixa
	funcao inicio()
	{
		soma = 0
		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		escreva("solução que peça ao usuário, a idade dos seus 5 funcionários \nAo final o programa deverá verificar se a média de idade\n")
		escreva("\n")
		escreva("-Informe a quantidade de funcionário! Ex.:(8) ")
		leia(qtdFuncionario)
		para(inteiro i = 0; i< qtdFuncionario; i++) {
			limpa()
			escreva("Informe a idade do "+ (i + 1) + "° funcionário Ex.:(18) ")
			leia(idade)

			soma = soma + idade
			
		}

		media = (soma/qtdFuncionario)

		se(media > 60) {
			faixa = "Funcionários são IDOSOS!!!"
		} senao se (media > 25) {
			faixa = "Funcionários são ADULTOS!!!"
		} senao se (media > 0){
			faixa = "Funcionários são JOVENS!!!"
		} senao {
			escreva("IDADE INVÀLIDA, inicie o programa novamente!")
			retorne
		}

		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		escreva("-" +faixa+"\n")
		escreva("-Média de idade:  "+ media + "\n")
		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 549; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */