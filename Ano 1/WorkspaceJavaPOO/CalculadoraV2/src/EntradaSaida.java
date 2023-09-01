import javax.swing.JOptionPane;

public class EntradaSaida {

	public static int solicitarOperacao() {
		int operacao = Integer.parseInt(JOptionPane.showInputDialog("Escolha a operação desejada: \n"
				+ "1 - Soma \n"
				+ "2 - Subtração \n"
				+ "3 - Multiplicação \n"
				+ "4 - Divisão"));
		return operacao;
	}
	
	
	
	public static double solicitarNumero(String ordem) {
		double num = Double.parseDouble(JOptionPane.showInputDialog("Informe o "+ ordem + "número"));
		return num;
	}
	
	public static void mostrarResultado(double resultado, int operacao) {
		String op = "op";
		if(operacao == 1) {
			op="soma";
		}else if(operacao == 2) {
			op="subtração";
		}else if(operacao == 3) {
			op="multiplicação";
		}else if(operacao == 1) {
			op="divisão";
		}
		JOptionPane.showMessageDialog(null, "O resultado da "+ op + " é: "+ resultado);
	}
}
