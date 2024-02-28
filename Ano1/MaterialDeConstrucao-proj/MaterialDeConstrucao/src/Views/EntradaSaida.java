package Views;
import java.util.ArrayList;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

import Models.*;

public class EntradaSaida {
	
	public static int exibePrimeiroMenu() {
		String[] opcoes = {"Registrar um produto","Sair"};
		JComboBox<String> menu = new JComboBox<>(opcoes);

		JOptionPane.showMessageDialog(null, menu, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return menu.getSelectedIndex();
	}
	
	public static int exibeMenuSecundario() {
		String[] opcoes = {"Registrar um novo produto","Mostrar produtos registrados","Registrar produtos no estoque","Mostrar produtos em estoque","Vender produto","Mostrar todas as vendas","Mostra vendas por produto","Calcular os valores das vendas","Sair"};
		JComboBox<String> menu = new JComboBox<>(opcoes);

		JOptionPane.showMessageDialog(null, menu, "Selecione a opção desejada", JOptionPane.PLAIN_MESSAGE);
		return menu.getSelectedIndex();
	}
	
	public static void mensagemSemEstoque() {
		JOptionPane.showMessageDialog(null, "Você não possui produtos em estoque!", "ERROR!", JOptionPane.ERROR_MESSAGE);
	}
	
	public static String recebeCodigo() {
		return JOptionPane.showInputDialog(null, "Informe o código do produto que deseja cadastrar: ", "Registro de produto", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static String recebeDescricao() {
		return JOptionPane.showInputDialog(null, "Informe a descrição do produto que deseja cadastrar: ", "Registro de produto", JOptionPane.PLAIN_MESSAGE);
	}
	
	public static double recebePreco() {
		
		double contador;
		
		do {
			contador = Double.parseDouble(JOptionPane.showInputDialog(null, "Informe o preço do produto que deseja cadastrar: ", "Registro de produto", JOptionPane.PLAIN_MESSAGE));
			
			if(contador <= 0.0) {
				JOptionPane.showMessageDialog(null, "Digite um valor válido!", "ERROR!", JOptionPane.ERROR_MESSAGE);
			}
			
			
		}while(contador <= 0.0);
		return contador;
	}
	
	
	public static void mostraProdutosSistema(ArrayList<Produto> produtos, int index) {
		
		String desc = "Código: "+produtos.get(index).getCodigo()+"\n"+
					  "Descrição: "+produtos.get(index).getDescricao()+"\n"+
					  "Preço: "+produtos.get(index).getPreco()+"\n";
		
		JOptionPane.showMessageDialog(null, desc, "Descrição do produto!", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static int indexSelecionado(ArrayList<Produto> produtos) {
		
		String[] itens = new String[produtos.size()+1];
		
		for(int i = 0; i < (produtos.size() + 1); i++) try {
			itens[i] = "Código: "+ produtos.get(i).getCodigo();
		} catch (IndexOutOfBoundsException e) {
			itens[i] = "Voltar";
		} 
		
		JComboBox menu = new JComboBox<>(itens);

		JOptionPane.showMessageDialog(null, menu, "Lista de códigos dos produtos", JOptionPane.PLAIN_MESSAGE);
		return menu.getSelectedIndex();
	}
	
	public static int colocarProdutosEstoque() {
		int contador;
		
		do {
			contador = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a quantidade de itens para o estoque: ", "Estoque do produto", JOptionPane.PLAIN_MESSAGE));
			
			if(contador <= 0) {
				JOptionPane.showMessageDialog(null, "Digite um valor válido!", "ERROR!", JOptionPane.ERROR_MESSAGE);
			}
			
			
		}while(contador <= 0);
		return contador;
	}
	
	public static void mensagemCadastroEstoque() {
		JOptionPane.showMessageDialog(null, "O produto foi cadastrado! ", "Estoque do produto", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static void menuEstoque(ArrayList<Produto> produtos, int index) {
		String desc = "Código: "+produtos.get(index).getCodigo()+"\n"+
				      "Descrição: "+produtos.get(index).getDescricao()+"\n"+
				      "Preço: "+produtos.get(index).getPreco()+"\n"+
				      "Total de Produtos no estoque: "+produtos.get(index).getTotal()+"\n";
	
		JOptionPane.showMessageDialog(null, desc, "Descrição do produto - Estoque!", JOptionPane.PLAIN_MESSAGE);
	}
	
	public static int selecionaQtdVendas(int valorTotal) {
		int total;
		
		do {
			total = Integer.parseInt(JOptionPane.showInputDialog(null, "Informe a quantidade de itens para venda: \nQuantidade de estoque: "+ valorTotal , "Venda de produto", JOptionPane.PLAIN_MESSAGE));
			
			if(total <= 0) {
				JOptionPane.showMessageDialog(null, "Digite um valor válido!", "ERROR!", JOptionPane.ERROR_MESSAGE);
			}
			
			
		}while(total <= 0);
		return total;
	}
	
	
	public static void mostraTodosCupons(ArrayList<Cupom> cuponsTotais) {
		String desc = "";
	
		for(int i = 0; i < cuponsTotais.size(); i++) {
			desc += "Código: "+cuponsTotais.get(i).getCodigo()+"\n"+
			        "Data da venda: "+cuponsTotais.get(i).getData()+"\n"+
			        "Total vendido: "+cuponsTotais.get(i).getTotalVendido()+"\n"+
			        "Preço total: "+cuponsTotais.get(i).getPrecoTotal()+"\n";
		}
		
		JOptionPane.showMessageDialog(null, desc, "Vendas totais", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static void mostraCuponsProdutos(ArrayList<Cupom> cuponsProduto) {
		String desc = "";
	
		for(int i = 0; i < cuponsProduto.size(); i++) {
			desc += "Código: "+cuponsProduto.get(i).getCodigo()+"\n"+
			        "Data da venda: "+cuponsProduto.get(i).getData()+"\n"+
			        "Total vendido: "+cuponsProduto.get(i).getTotalVendido()+"\n"+
			        "Preço total: "+cuponsProduto.get(i).getPrecoTotal()+"\n";
		}
		
		JOptionPane.showMessageDialog(null, desc, "Vendas produtos", JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static void calculaCuponsTotais(ArrayList<Cupom> cuponsTotais) {
		
		double soma = 0.00;
		
		for(Cupom cupomTotal: cuponsTotais) {
			soma += cupomTotal.getPrecoTotal();
		}
		
		
		JOptionPane.showMessageDialog(null, soma, "Valor total" + soma, JOptionPane.PLAIN_MESSAGE);
	}
	
	
	public static int produtosVendidos(int total, int valorAtual) {
		return (valorAtual - total);
	}
	
	
	public static void errorMsgVenda(int total) {
		JOptionPane.showMessageDialog(null, "Você não pode realizar a operação. O valor do estoque é menor\n Estoque Atual: "+ total, "ERROR", JOptionPane.ERROR_MESSAGE);
	}
	
	public static void mensagemVenda(int valorAtual) {
		JOptionPane.showMessageDialog(null, "Venda concluida, Saldo atual: "+ valorAtual, "Vendas", JOptionPane.PLAIN_MESSAGE);
	}
	
	public static void mensagemEncerraPrograma () {
		JOptionPane.showMessageDialog(null, "sair ", "Tchau", JOptionPane.PLAIN_MESSAGE);
	}
	
	
}
