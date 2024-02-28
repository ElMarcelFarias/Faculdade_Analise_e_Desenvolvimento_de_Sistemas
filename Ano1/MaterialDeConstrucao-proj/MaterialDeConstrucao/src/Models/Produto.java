package Models;
import java.util.ArrayList;

public class Produto {
	private String codigo;
	private String descricao;
	private double preco;
	private int total;
	private final ArrayList<Cupom> cupons = new ArrayList<>();
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	public ArrayList<Cupom> getCupons() {
		return cupons;
	}
	
	public void setCupons(Cupom cupom) {
		this.cupons.add(cupom);
	}
	
	
	
}
