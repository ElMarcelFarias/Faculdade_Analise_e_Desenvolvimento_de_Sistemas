programa
{
	cadeia nameUser, nameCar
	inteiro opcaoCar, dateCar
	real priceCar
	funcao inicio()
	{
		escreva("------------------ALUGEL DE CARROS SENAI------------------\n")
		escreva("-Informe seu nome para o Alugel: Ex.:(Marcel Leite de Farias)\n")
		leia(nameUser)
		limpa()
		escreva("-Qual estilo você deseja? \n")
		escreva("-Digite (1) para  conversível\n")
		escreva("-Digite (2) para  sedã\n")
		escreva("-Digite (3) para  hatch\n")
		escreva("-Digite (4) para  picape\n")
		escreva("-Digite (5) para  minivan\n")
		leia(opcaoCar)
		limpa()

		escolha(opcaoCar) {
			caso 1: 
				escreva("-Informe o ano do carro conversível Ex.:(2015) \n")
				leia(dateCar)
				//mudar a lógica do exercicio para escolha
				escreva(dateCar)
				
				se(dateCar <= 2015){
					nameCar = "Chevrolet Camaro conversível "
					priceCar = 200.00
				} senao se (dateCar <= 2018) {
					nameCar = "Mercedez-Bens SLC 300 " 
					priceCar = 300.00
				} senao {
					nameCar = "BMW 430i Cabrio M Sport "
					priceCar = 320.00
				}			
			pare

			caso 2:
				escreva("-Informe o ano do carro sedã Ex.:(2015) \n")
				leia(dateCar)

				se(dateCar <= 2015){
					nameCar = "Honda Civic "
					priceCar = 100.35
				} senao se (dateCar <= 2018) {
					nameCar = "Volkswagen Jetta " 
					priceCar = 170.00
				} senao {
					nameCar = "Mercedez-Bens C180 " 
					priceCar = 220.00
				}	 
			pare

			caso 3: 
				escreva("-Informe o ano do carro sedã Ex.:(2015) \n")
				leia(dateCar)

				se(dateCar <= 2015){
					nameCar = "Onix 1.0 "
					priceCar = 55.00
				} senao se (dateCar <= 2018) {
					nameCar = "HB20 " 
					priceCar = 100.00
				} senao {
					nameCar = "Volkswagen Polo"
					priceCar = 172.00
				}
			pare

			caso 4: 

				escreva("-Informe o ano do carro picape Ex.:(2015)")
				leia(dateCar)

				se(dateCar <= 2015){
					nameCar = "Saveiro 1.6 "
					priceCar = 120.00
				} senao se (dateCar <= 2018) {
					nameCar = "Fiat Toro "
					priceCar = 180.00
				} senao {
					nameCar = "Volkswagen Hilux" 
					priceCar = 250.00
				}
			pare

			caso 5:
				escreva("-Informe o ano do carro minivan Ex.:(2015)")
				leia(dateCar)

				se(dateCar <= 2015){
					nameCar = "Peugeot Boxer Minibus " 
					priceCar = 200.00
				} senao se (dateCar <= 2018) {
					nameCar = "Chevrolet Spin " 
					priceCar = 300.00
				} senao {
					nameCar = "Minivan do Kwid" 
					priceCar = 180.00
				} 
			pare
		}

		limpa()
		escreva("------------------ALUGEL DE CARROS SENAI------------------\n")
		escreva("-Nome do condutor: " + nameUser+ "\n")
		escreva("-Carro: " + nameCar+ "\n")
		escreva("-Ano do carro: " + dateCar+ "\n")
		escreva("------------------ALUGEL DE CARROS SENAI------------------\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 834; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */