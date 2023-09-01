
import javax.swing.JOptionPane;
public class Principal {

	public static void main(String[] args) {
			
		String modelo = EntradaSaida.solicitarModelo();
		String cor = EntradaSaida.solicitarModelo();
		
		JOptionPane.showMessageDialog(null, "O modelo do carro é: "+ modelo+"\n"
										+ "A cor do carro é: "+ cor);
	}

}
