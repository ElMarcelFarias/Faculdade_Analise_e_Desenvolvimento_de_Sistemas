import javax.swing.JOptionPane;

public class Carro {
	
	private String modelo;
	private String cor ;
	
	//get
	public String getModelo() {
		return this.modelo;
	}
	
	public String getCor() {
		return this.cor;
	}
	
	//set
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	
	public void carroCompleto() {
		JOptionPane.showMessageDialog(null, "O modelo do carro é: "+ modelo+"\n"
										+ "A cor do carro é: "+ cor);
	}
	
	
	
	
}
