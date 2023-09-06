
import javax.swing.JOptionPane;
public class Principal {
	
	private static Carro car = new Carro();
	public static void main(String[] args) {
		
		
		car.modelo = EntradaSaida.solicitarModelo();
		car.cor = EntradaSaida.solicitarModelo();
		
		
		JOptionPane.showMessageDialog(null, "O modelo do carro é: "+ car.modelo+"\n"
										+ "A cor do carro é: "+ car.cor);
	}

}
