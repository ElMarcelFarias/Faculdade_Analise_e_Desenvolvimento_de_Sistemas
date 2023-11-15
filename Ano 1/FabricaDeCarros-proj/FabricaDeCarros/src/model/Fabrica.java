package model;

import java.util.ArrayList;

public abstract class Fabrica implements IConstrucaoCarro {
	protected String modelo;
	protected String cor;
	protected String turbo;
	protected String anoFabricacao;
	protected String suspensao; 
	protected ArrayList<Fabrica> listaDeCarrosEsportivos = new ArrayList<Fabrica>();
	protected ArrayList<Fabrica> listaDeCarrosBasicos = new ArrayList<Fabrica>(); 
	
	//get
	public String getModelo() {
		return this.modelo;
	}
	
	public String getCor() { 
		return this.cor;
	}
	
	public String getQtdTurbo() { 
		return this.turbo;
	}
	
	public String getSuspensao() { 
		return this.suspensao;
	}
	
	public String getAnoFabricacao() { 
		return this.anoFabricacao;
	}
	
	public ArrayList<Fabrica> getlistaDeCarrosEsportivos() {
		return listaDeCarrosEsportivos;
	}
	
	public ArrayList<Fabrica> getlistaDeCarrosBasicos() {
		return listaDeCarrosBasicos;
	}
	
	

	
	
	
	
	
	
	//set
	
	public void setListaDeCarrosBasicos(ArrayList<Fabrica> listaDeCarrosBasicos) {
		this.listaDeCarrosBasicos = listaDeCarrosBasicos;
	}
	
	public void setlistaDeCarrosEsportivos(ArrayList<Fabrica> listaDeCarrosEsportivos) { 
		this.listaDeCarrosEsportivos = listaDeCarrosEsportivos; 
	}
	
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	public void setQtdTurbo(String turbo) {
		this.turbo = turbo;
	}
	
	public void setSuspensao(String suspensao) {
		this.suspensao = suspensao;
	}
	
	public void setAnoFabricacao(String anoFabricacao) {
		this.anoFabricacao = anoFabricacao;
	}
	
	
	public void fabricarCarro(String op, String modelo, String cor, String anoFabricacao, String QtdTurbo, String Suspensao, ArrayList<Fabrica> listaDeCarrosBasicos, ArrayList<Fabrica> listaDeCarrosEsportivos) {
		
		if(op.equals("CarroEsportivo")) {
			setQtdTurbo(QtdTurbo);
			setSuspensao(Suspensao);
			setlistaDeCarrosEsportivos(listaDeCarrosEsportivos);
		} 
		
		setModelo(modelo);
		setCor(cor);
		setAnoFabricacao(anoFabricacao);
		setListaDeCarrosBasicos(listaDeCarrosBasicos);
		
	}
	
	public void venderCarro(int index, String op) {
		if(op.equals("CarroEsportivo")) {
			listaDeCarrosEsportivos.remove(index);
		} else {
			listaDeCarrosBasicos.remove(index);
		}
	}
	
	
	
}