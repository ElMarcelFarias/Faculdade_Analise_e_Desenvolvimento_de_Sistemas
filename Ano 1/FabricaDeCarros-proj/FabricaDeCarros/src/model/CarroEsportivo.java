package model;

public class CarroEsportivo extends Fabrica {
	
	
	public String descricaoCarro() {
		return "O modelo do carro é: "+ modelo+"\n"
				+ "A cor do carro é: "+ cor + "\n"
				+ "Ano de fabricação: "+ anoFabricacao + "\n"
				+ "Quantidade de pressão turbo(kg): " + turbo + "\n"
				+ "Suspensão: "+ suspensao;
	}
}
