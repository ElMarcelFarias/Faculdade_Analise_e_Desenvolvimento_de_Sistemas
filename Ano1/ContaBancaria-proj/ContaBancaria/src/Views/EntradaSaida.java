package Views;

import java.util.ArrayList;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class EntradaSaida {
	
	
	
	public static int menuInicialPrimario() {
		String[] opcoes = {"Cria uma nova conta","sair"};
		JComboBox<String> menu = new JComboBox<>(opcoes);

		JOptionPane.showMessageDialog(null, menu, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return menu.getSelectedIndex();
	}
	
	
	public static int menuInicial() {
		String[] opcoes = {"Cria uma nova conta","Depositar","Sacar","Saldo","Informações da Conta","Extrato","Extrato de Depósitos","Extrato de Saques","Sair"};
		JComboBox<String> menu = new JComboBox<>(opcoes);

		JOptionPane.showMessageDialog(null, menu, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return menu.getSelectedIndex();
	}
	
	public static String solicitarNome() {
		return JOptionPane.showInputDialog(null, "Informe seu nome completo:", "Criar uma nova conta:", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static String solicitarCPF() {
		return JOptionPane.showInputDialog(null, "Informe seu CPF:", "Criar uma nova conta:", JOptionPane.PLAIN_MESSAGE);
	}
	
	public static double solicitarSaldoInicial() {
		double saldo = 0;
		String[] opcoes = {"100","500","1000","Outros"};
		JComboBox<String> saldos = new JComboBox<>(opcoes);
		JOptionPane.showMessageDialog(null, saldos, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		
		if (saldos.getSelectedIndex() == 0)         { saldo = 100; } 
		else if (saldos.getSelectedIndex() == 1)    { saldo = 500;}
		else if (saldos.getSelectedIndex() == 2) {saldo = 1000;} 
		else { saldo = Double.parseDouble(JOptionPane.showInputDialog(null, "Depósito", "Informe o valor desejado:", JOptionPane.PLAIN_MESSAGE)); }
		
		return saldo;
	}
	
	public static int solicitarTipoConta() {
		String[] opcoes = {"Conta Poupança","Conta Corrente"};
		JComboBox<String> contas = new JComboBox<>(opcoes);
		JOptionPane.showMessageDialog(null, contas, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return contas.getSelectedIndex();
	}
	
	public static void msgCPF() {
		JOptionPane.showMessageDialog(null, "CPF Inccoreto.");
	}
	
	
	public static int selecionarConta(ArrayList contas) {
		
		String[] opcoes = new String[contas.size()];
	
		for(int i = 0; i < contas.size(); i++) {
			opcoes[i] = contas.get(i).toString();
		}
		
		JComboBox<String> opcoesSelecionada = new JComboBox<>(opcoes);
		JOptionPane.showMessageDialog(null, opcoesSelecionada, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return opcoesSelecionada.getSelectedIndex();
	}
	
	public static double coletaDeposito() {
		
		double deposito =  0;
		do {
			deposito = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe o valor do depósito: ", "Valor Depósito", JOptionPane.PLAIN_MESSAGE));
			
			if(deposito <= 0) {
				JOptionPane.showMessageDialog(null, "Valor incorreto!");
			}
		}while(deposito <= 0);
		
		return deposito;
	}
	
	
	public static void mostraSaldo(Double saldo, String nome) {
		JOptionPane.showMessageDialog(null, "Titular da conta: " + nome, "Saldo Atual: R$ "+ saldo, JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static double coletarSaque() {
		
		double saque =  0;
		do {
			saque = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe o valor do Saque: ", "Valor Saque", JOptionPane.PLAIN_MESSAGE));
			
			if(saque <= 0) {
				JOptionPane.showMessageDialog(null, "Valor incorreto!");
			}
		}while(saque <= 0);
		
		return -saque;
	}
	
	public static void mensagemErrorNegativo(double total, double saldoAtual) {
		JOptionPane.showMessageDialog(null, "Saldo inválido, não pode ser menor que -1000 \nSaldo Atual: R$:"+ saldoAtual + "\nPor que seu saldo será de: R$:"+total);
	}
	
	
	public static void mostraSaldo(double saldo, String nome) {
		JOptionPane.showMessageDialog(null, "Saldo Atual: "+ saldo, "Titular da conta: " + nome, JOptionPane.PLAIN_MESSAGE);
	}
	
	public static void mostraInformacoes(int tipoConta, double saldo, String cpf, String nome) {
		
		String tipos = "";
		if(tipoConta == 0) { tipos = "Conta Poupança";} else { tipos = "Conta Corrente"; }
		
		JOptionPane.showMessageDialog(null, "Nome: " + nome + "\n" + "Tipo da Conta: " + tipos + "\n" +
                "Saldo Atual: R$" + saldo + "\n" + "CPF: " + cpf, "Titular da Conta: " + nome,
        JOptionPane.PLAIN_MESSAGE);
	}
	
	public static void mostraMovimentacao(ArrayList<String> movimentacoes, String nome) {
		
		String[] totalMenu = new String[movimentacoes.size()];
		for(int x=0;x<movimentacoes.size();x++) {
			totalMenu[x] = movimentacoes.get(x) + "\n";
		}
		
		JOptionPane.showMessageDialog(null, totalMenu,"Conta: " + nome,JOptionPane.PLAIN_MESSAGE);
	}
	
	public static void mensagemEncerraPrograma() {
		JOptionPane.showMessageDialog(null,"Tchau! ");
	}
	
	
	
	
	
}

