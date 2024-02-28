package Models;

import java.util.ArrayList;

public class InfoProduto {
	private final ArrayList<Produto> listaDeProdutos = new ArrayList<>();
	
	public ArrayList<Produto> getlistaDeProdutos() {
		return listaDeProdutos;
	}
	
	public void setlistaDeProdutos(Produto produto) {
		this.listaDeProdutos.add(produto);
	}
	
}
