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
		
		String msg = "Carros: \n";
		if(listaDeCarros.size() == 0) {
			return "Não temos carros disponíveis";
		}
		
		for(int i = 0; i < listaDeCarros.size(); i++) {
			
			if(i > 0) {
				msg += "-------------------------------------\n";
			}
			
			msg += listaDeCarros.get(i).getModelo().toUpperCase() + " - ";
			msg += listaDeCarros.get(i).getAnoDeFabricacao().toUpperCase() + " - ";
			msg += listaDeCarros.get(i).getCor().toUpperCase() + "  \n";
	
		}
	
		return msg;
		
	}
	
	public void venderCarros (int carro){
		listaDeCarros.remove(carro);
	}
}
