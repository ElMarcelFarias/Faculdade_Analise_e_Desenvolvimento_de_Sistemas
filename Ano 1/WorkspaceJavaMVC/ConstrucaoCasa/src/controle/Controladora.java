package controle;
import javax.swing.JOptionPane;
import visualizacao.EntradaSaida;
import modelo.*; 

public class Controladora {
	private Casa casa = null;
	
	public void exibeMenu() {
		int opcao;
		do {
			
			opcao = EntradaSaida.solicitarOpcao();
			
			switch(opcao) {
				case 0:
					JOptionPane.showMessageDialog(null, "Construir casa");
				break;
				
				case 1:
					JOptionPane.showMessageDialog(null, "Movimentar portas ou janelas");
				break;
					
				case 2:
					JOptionPane.showMessageDialog(null, "Ver informações da casa");
				break;
			}
			
		} while(opcao !=3);
		
		EntradaSaida.exibeMsgEncerrarPrograma();
		System.exit(0);
	}
	
}
