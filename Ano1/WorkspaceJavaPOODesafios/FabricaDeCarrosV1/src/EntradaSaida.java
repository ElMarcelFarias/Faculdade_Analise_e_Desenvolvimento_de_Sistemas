import javax.swing.JOptionPane;

public class EntradaSaida {
	
	public static String solicitarModelo() {
		String modelo = JOptionPane.showInputDialog("Informe o modelo do carro: ");
		return modelo;
	}
	
	public static String solicitarCor() {
		String cor = JOptionPane.showInputDialog("Informe a cor do carro: ");
		return cor;
	}
	
	//por ser funções de facil e bastante como de entrada e saida utilizamos o static para colocar em memória ao inicar o sistema.
	
}
