package modelo;

public class Carro extends CarroBase {
	
	public String descricaoCarro() {
		return "O modelo do carro é: "+ modelo+"\n"
				+ "A cor do carro é: "+ cor + "\n"
				+ "Ano de fabricação: "+ anoFabricacao;
	}
	
}