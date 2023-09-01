
import javax.swing.JOptionPane;
public class Principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int continuar;
		
		do {
			double num1 = solicitarNumero(JOptionPane.showInputDialog("1° número"));
			double num2 = solicitarNumero(JOptionPane.showInputDialog("2° número"));
			int operacao = solicitarOperacao();
			
			continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1 - sim | 2 - não"));
		}while(continuar==1);
	}
	
	static int solicitarOperacao() {
		int operacao = Integer.parseInt(JOptionPane.showInputDialog("Escolha a operação desejada: \n"
				+ "1 - Soma \n"
				+ "2 - Subtração \n"
				+ "3 - Multiplicação \n"
				+ "4 - Divisão"));
		return operacao;
	}
	
	
	
	static double solicitarNumero(String ordem) {
		double num = Double.parseDouble(JOptionPane.showInputDialog("Informe o "+ ordem + "número"));
		return num;
	}

}
