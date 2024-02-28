// Você foi contratado por uma empresa que oferece o serviço de síndico profissional
// para condomínios. Eles precisam de um pequeno cadastro para administrar as 4
// (quatro) famílias que moram no Condomínio Studiare Molto. O cliente quer uma
// aplicação em que ele possa inserir: o sobrenome da família, o apartamento em que
// moram; a quantidade de moradores; e a renda da família. Após inseridas as
// informações, o síndico profissional quer poder pesquisar cada uma dessas famílias
// cadastradas por meio do apartamento em que moram. Assim, o programa deverá
// mostrar de maneira organizada as seguintes informações na seguinte ordem:
// ● Apartamento
// ● Sobrenome da família
// ● Renda total
// ● Renda per capita (Renda total / quantidade de moradores)
// Duas informações importantes:
// 1. Você não pode permitir que o usuário cadastre duas vezes o mesmo
// apartamento;
// 2. O usuário pode realizar quantas pesquisas desejar, encerrando o programa
// apenas quando não quiser saber mais nada.


programa
{
	inclua biblioteca Texto -->  t
	cadeia sobrenomeFamilia[4], aux 
	inteiro numeroApt[4], qtdMoradores[4], pesquisaApt, auxArray
	real rendaFamilia[4], rendaPerCapita[4]
	logico validaNumero
	funcao inicio()
	{
		auxArray = 0
		//validaNumero = verdadeiro
		escreva("--------------------GESTÃO Studiare Molto--------------------\n")
		
		para(inteiro i = 0; i < 4; i++) {
			
			escreva("Informe o sobrenome da familia: Ex.:(Farias) ")
			leia(sobrenomeFamilia[i])

			faca {
				
				escreva("Informe o número do apartamento: Ex.:(5) ")
				leia(numeroApt[i])
					
				para(inteiro b = 0; b < i; b++) { 
					se (numeroApt[i] == numeroApt[b]) {
						validaNumero = verdadeiro
						pare
					} senao {
						validaNumero = falso	
					}
				}
				
			} enquanto(validaNumero != falso)

			


			escreva("Informe a quantidade de moradores: Ex.:(4)")
			leia(qtdMoradores[i])

			escreva("Informe a renda da familia: Ex.:(5.000)")
			leia(rendaFamilia[i])

			rendaPerCapita[i] = rendaFamilia[i]/qtdMoradores[i]
			limpa()

		}
		limpa()
		escreva("Deseja fazer uma pesquisa das familias? (S - SIM / N - NÃO) ")
		leia(aux)
		aux = t.caixa_alta(aux)

		enquanto(aux=="S"){
			escreva("--------------------GESTÃO Studiare Molto--------------------\n")
			escreva("Informe o número do apartamento..: Ex(121) ")
			leia(pesquisaApt)


			para(inteiro i = 0; i < 4; i++) {
				se(numeroApt[i] == pesquisaApt) {
					auxArray = i
					pare
				}
			}
			escreva(" ")
			escreva("-Número do apartamento..: "+ numeroApt[auxArray]+ "\n")
			escreva("-Sobrenome da familia..: "+ sobrenomeFamilia[auxArray]+ "\n")
			escreva("-Renda Total..: "+ rendaFamilia[auxArray]+ "\n")
			escreva("-Renda per capita..: "+ rendaPerCapita[auxArray]+ "\n")
			escreva(" ")
			escreva("--------------------GESTÃO Studiare Molto--------------------\n")

			escreva("Deseja fazer uma outra pesquisa das familias? (S - SIM / N - NÃO) ")
			leia(aux)
			aux = t.caixa_alta(aux)
		}

		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */