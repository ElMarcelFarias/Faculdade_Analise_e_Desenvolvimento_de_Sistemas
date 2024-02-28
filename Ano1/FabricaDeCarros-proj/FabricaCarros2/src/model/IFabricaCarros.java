package model;

import java.util.ArrayList;

public interface IFabricaCarros {
	public void setListaDeCarros (ArrayList<Carro> listaDeCarros);
	public void fabricarCarros (Carro carro);
	public String verCarros();
	public void venderCarros (int carro);
}
