programa
{
	inteiro qtdFuncionario, sexo, qtdMasculino, qtdFeminino
	real salarioFuncionario, mediaMasculino, mediaFeminino, total
	cadeia nomeFuncionario
	funcao inicio()
	{
		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		escreva("-software para levantar folha de pagamento dos funcionários \n")
		escreva("-Informe quantos funcionários serão: Ex.:(8)\n")
		leia(qtdFuncionario)
		
		mediaFeminino = 0.00
		mediaMasculino = 0.00
		total = 0.00
		qtdMasculino = 0
		qtdFeminino = 0

		para(inteiro i = 0; i < qtdFuncionario; i++) {
			limpa()
			escreva("Informe o nome do " + (i+1)+ "° funcionário! Ex.:(João da Silva) ")
			leia(nomeFuncionario)

			escreva("Informe o sexo do " + (i+1)+ "° funcionário! Ex.:(MASCULINO - 1 | FEMININO - 2) ")
			leia(sexo)

			escreva("Informe o salário do " + (i+1)+ "° funcionário! Ex.:(1.378) ")
			leia(salarioFuncionario)

			total = total + salarioFuncionario
			
			se (sexo == 1) {
				qtdMasculino += 1
				mediaMasculino = mediaMasculino + salarioFuncionario
			} senao {
				qtdFeminino += 1
				mediaFeminino = mediaFeminino + salarioFuncionario
			}
			
		}

		mediaMasculino  = (mediaMasculino/qtdMasculino)
		mediaFeminino  = (mediaFeminino/qtdFeminino)

		limpa()
		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		escreva("-Valor total da folha: "+ total + "\n")
		escreva("-Média Masculina: "+ mediaMasculino + "\n")
		escreva("-Média Feminina: "+ mediaFeminino + "\n")
		escreva("-------------SÓ GASTA&NÃO LUCRA S.A-------------\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1228; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */