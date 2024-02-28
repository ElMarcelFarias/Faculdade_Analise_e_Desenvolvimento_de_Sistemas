
import javax.swing.JOptionPane;
public class Principal {
	
	private static Carro car = new Carro();
	public static void main(String[] args) {
		
		
		String modelo = EntradaSaida.solicitarModelo();
		String cor    = EntradaSaida.solicitarCor();

		car.setModelo(modelo);
		car.setCor(cor);
		car.carroCompleto();
		
		
	}

}
