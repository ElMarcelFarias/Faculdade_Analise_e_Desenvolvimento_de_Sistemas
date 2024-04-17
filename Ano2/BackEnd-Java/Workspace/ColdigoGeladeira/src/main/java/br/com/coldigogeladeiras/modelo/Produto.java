package br.com.coldigogeladeiras.modelo;

import java.io.Serializable;

public class Produto implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String categoria;
	private int marcaId;
	private String modelo;
	private int capacidade;
	private float valor;
	
	
}
