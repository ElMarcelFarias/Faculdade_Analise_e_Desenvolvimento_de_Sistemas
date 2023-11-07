package visualizacao;
import javax.swing.JOptionPane;

import modelo.Aberturas;

import java.util.ArrayList;

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
	
	public static String solicitarTipoAbertura() {
		String[] opcoes = {"Porta", "Janela"};
		
		int tipoAbertura = JOptionPane.showOptionDialog(null, "Informe qual tipo de abertura deseja mover", "Mover abertura", JOptionPane.DEFAULT_OPTION, JOptionPane.INFORMATION_MESSAGE, null, opcoes, opcoes[0]);
		
		if(tipoAbertura == 0 ) {
			return "Porta";
		} else {
			return "Janela";
		}
		
	}
	
	public static int solicitaAberturaMover(ArrayList<Aberturas> listaDeAberturas) {
		String tipoAbertura = listaDeAberturas.get(0).getClass().getName();
		tipoAbertura = tipoAbertura.replaceAll("modelo", "");
		int qtdeAbertura = listaDeAberturas.size();
		String[] descricoesAberturas = new String[qtdeAbertura];
		
		for(int i = 0; i < qtdeAbertura; i++) {
			descricoesAberturas[i] = listaDeAberturas.get(i).getDescricao();
		}
		
		String msg = "Escolha a" +tipoAbertura + "a ser movimentada";
		JComboBox exibicaoAberturas = new JComboBox(descricoesAberturas);
		
		int confirmacao = JOptionPane.showConfirmDialog(null, exibicaoAberturas, msg, JOptionPane.OK_CANCEL_OPTION);
		
		if(confirmacao == 0) {
			return exibicaoAberturas.getSelectedIndex();
		} else {
			return -1;
		}
		
	}
	
	public static void exibeMsgAbertura() {
		JOptionPane.showMessageDialog(null, "Nenhuma abertura será movimentada");
	}
	
}
