package view;

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
	
	public static void carroCompleto(String msg) {
		JOptionPane.showMessageDialog(null, msg);
	}

}
