package modelo;
import java.util.ArrayList;

public class Casa {
	
	private String descricao;
	private String cor;
	private ArrayList<Aberturas> listaDePortas = new ArrayList<Aberturas>();
	private ArrayList<Aberturas> listaDeJanelas = new ArrayList<Aberturas>();
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getCor() {
		return cor;
	}
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	public ArrayList<Aberturas> getListaDePortas() {
		return listaDePortas;
	}
	
	public void setListaDePortas(ArrayList<Aberturas> listaDePortas) {
		this.listaDePortas = listaDePortas;
	}
	
	public ArrayList<Aberturas> getListaDeJanelas() {
		return listaDeJanelas;
	}
	public void setListaDeJanelas(ArrayList<Aberturas> listaDeJanelas) {
		this.listaDeJanelas = listaDeJanelas;
	}
	
	public void constroiCasa(String descricao, String cor, ArrayList<Aberturas> listaDePortas, ArrayList<Aberturas> listaDeJanelas) {
		setDescricao(descricao);
		setCor(cor);
		setListaDePortas(listaDePortas);
		setListaDeJanelas(listaDeJanelas);
		
		
	}
	
}
