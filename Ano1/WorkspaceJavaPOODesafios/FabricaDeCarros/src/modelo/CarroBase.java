package modelo;

public abstract class CarroBase implements IConstrucaoCarro {
	protected String modelo;
	protected String cor;
	protected String turbo;
	protected String anoFabricacao;
	protected String suspensao; 
	
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
	
	
	
	//set
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
	
}