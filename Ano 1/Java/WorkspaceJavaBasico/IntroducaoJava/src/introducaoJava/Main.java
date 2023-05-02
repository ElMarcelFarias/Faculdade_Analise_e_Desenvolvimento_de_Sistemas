package introducaoJava;

import javax.swing.JOptionPane;

public class Main {

	public static void main(String[] args) {
		int[] valores = new int[10];
		
		for(int i=0; i<10; i++) {
			
			valores[i] = Integer.parseInt(JOptionPane.showInputDialog("Informe o "+ (i+1)+"° valor: "));
		
		}
		
		String repetir; 
		
		do {
			
			int opcao = Integer.parseInt(JOptionPane.showInputDialog("O que você deseja fazer?"
					+"\n 1 - Todos os valores"
					+"\n 2 - Somente o primeiro valor"
					+"\n 3 - Somente o último valor"
					+"\n 4 - Ver os valores pares"));
			repetir = JOptionPane.showInputDialog("Deseja voltar ao menu?"
													+" \n Digite S para sim ou outro caracter para não:");
			
		} while(repetir.equals("S"));
		
	}

}
