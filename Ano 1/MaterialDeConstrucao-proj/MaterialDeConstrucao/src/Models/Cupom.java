package Models;

public class Cupom {
	private String data;
	private String codigo;
	private int totalVendido;
	private double precoTotal;
	
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	
	public int getTotalVendido() {
		return totalVendido;
	}
	public void setTotalVendido(int totalVendido) {
		this.totalVendido = totalVendido;
	}
	
	public double getPrecoTotal() {
		return precoTotal;
	}
	public void setPrecoTotal(double precoTotal) {
		this.precoTotal = precoTotal;
	}
	
	
	
}
