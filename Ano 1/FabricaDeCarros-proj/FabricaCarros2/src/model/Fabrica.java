package model;

import java.util.ArrayList;

public class Fabrica {

	private ArrayList<Carro> listaDeCarros = new ArrayList<Carro>();

	public ArrayList<Carro> getListaDeCarros() {
		return listaDeCarros;
	}

	public void setListaDeCarros(ArrayList<Carro> listaDeCarros) {
		this.listaDeCarros = listaDeCarros;
	}
	
	public void fabricarCarros (Carro carro){
		listaDeCarros.add(carro);
		
	}
	
	public String verCarros() {
		
		String msg = "";
		for(int i = 0; i < listaDeCarros.size(); i++) {
			
			msg += listaDeCarros.get(i).getModelo() + "\n";
			msg += listaDeCarros.get(i).getCor() + "\n";
	
		}
	
		return msg;
		
	}
	
	public void venderCarros (int carro){
		
		listaDeCarros.remove(carro);
		
	}
}
