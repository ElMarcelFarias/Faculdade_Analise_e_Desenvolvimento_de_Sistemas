package visualizacao;
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
	
	public static String solicitarQtdTurbo() {
		String turbo = JOptionPane.showInputDialog("Informe a quantidade pressão de KG do turbo: ");
		return turbo;
	}
	
	public static String solicitarSuspensao() {
		String suspensao = JOptionPane.showInputDialog("Informe a suspensão: ");
		return suspensao;
	}
	
	public static String solicitarAnoFabricacao() {
		String anoFabricacao = JOptionPane.showInputDialog("Informe o ano de fabricação: ");
		return anoFabricacao;
	}
	
	public static void carroCompleto(String desc) {
		JOptionPane.showMessageDialog(null, desc);
	}
	
	//por ser funções de facil e bastante como de entrada e saida utilizamos o static para colocar em memória ao inicar o sistema.
	
}
