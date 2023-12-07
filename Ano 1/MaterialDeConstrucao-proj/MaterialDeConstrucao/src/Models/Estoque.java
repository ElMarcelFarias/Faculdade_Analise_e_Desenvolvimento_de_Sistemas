package Models;

import java.util.ArrayList;

public class Estoque {
	private final ArrayList<Produto> listaDeProdutosEstoque = new ArrayList<>();
	private final ArrayList<Cupom>   listaCuponsTotais = new ArrayList<>();
	
	public ArrayList<Produto> getlistaDeProdutosEstoque() {
		return listaDeProdutosEstoque;
	}
	
	public void setlistaDeProdutosEstoque(Produto produto) {
		this.listaDeProdutosEstoque.add(produto);
	}
	
	public ArrayList<Cupom> getlistaCuponsTotais() {
		return listaCuponsTotais;
	}
	
	public void setlistaCuponsTotais(Cupom produto) {
		this.listaCuponsTotais.add(produto);
	}
}
