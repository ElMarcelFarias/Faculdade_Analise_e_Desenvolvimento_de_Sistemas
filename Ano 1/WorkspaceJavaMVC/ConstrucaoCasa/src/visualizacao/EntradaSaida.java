package visualizacao;
import javax.swing.JOptionPane;
import javax.swing.JComboBox;

public class EntradaSaida {
	
	public static int solicitarOpcao() {
		String[] opcoes = {"Construir casa", "Movimentar portas ou janelas", "ver informações da casa", "Sair do programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		
		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
		return menu.getSelectedIndex();
		
	}
	
	public static void exibeMsgEncerrarPrograma() {
		JOptionPane.showMessageDialog(null, "O programa será encerrado!");
	}
	
	public static String solicitarDescricao(String descricao, int ordem) {
		if(ordem==0) {
			return JOptionPane.showInputDialog("Informe a descrição da "+ descricao);
		} else {
			return JOptionPane.showInputDialog("Informe a descrição da "+ ordem + " " + descricao);
		}
	}
	
	public static String solicitarCor() {
		return JOptionPane.showInputDialog("Informe a cor da casa");
	}
	
	public static int solicitarQtdeAberturas(String aberturas) {
		return Integer.parseInt(JOptionPane.showInputDialog("Informe a quantidade de "+ aberturas));
	}
	
	public static int solicitarEstado(String tipoAbertura) {
		String[] opcoes = {"Fechada", "Aberta"};
		
		return JOptionPane.showOptionDialog(null, "Informe o estado da " + tipoAbertura, "Estado", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE, null, opcoes, opcoes[1]);
	}
	
}
