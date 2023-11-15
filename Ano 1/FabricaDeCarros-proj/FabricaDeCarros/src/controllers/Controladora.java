package controllers;
import model.*;
import views.EntradaSaida;

import java.util.ArrayList;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class Controladora {
	ArrayList<Fabrica> listaDeCarrosBasicos    = new ArrayList<Fabrica>(); 
	ArrayList<Fabrica> listaDeCarrosEsportivos = new ArrayList<Fabrica>();
	
	public void exibeMenu() {
		
		String modelo = "";
		String cor = "";
		String anoFabricacao = "";
		String suspensao = "";
		String qtdTurbo = "";
		
		
		String[] opcoes = {"Fabricar Carro", "Vender Carro", "Listar os Carros", "Sair do programa"};
		JComboBox<String> menu = new JComboBox<String>(opcoes);
		
		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
	
		
		do {
		
		switch (menu.getSelectedIndex()) {
			case 0: 
				int qtdFabricar = Integer.parseInt(JOptionPane.showInputDialog("Informe quantos carros deseja fabricar: "));
				
				
				for(int i = 0; i < qtdFabricar; i ++) {
					String[] opFabricar = {"Carro básico", "Carro esportivo"};
					JComboBox<String> menuFabricar = new JComboBox<String>(opFabricar);
					JOptionPane.showConfirmDialog(null, menuFabricar, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
					
					if(menuFabricar.getSelectedIndex() == 0) {
						
						modelo = EntradaSaida.solicitarModelo();
						cor    = EntradaSaida.solicitarCor();
						anoFabricacao = EntradaSaida.solicitarAnoFabricacao();
						String[] dataBasicos = {modelo, cor, anoFabricacao};
						setCarros("CarroBasico", dataBasicos);
					} else {
						modelo = EntradaSaida.solicitarModelo();
						cor    = EntradaSaida.solicitarCor();
						anoFabricacao = EntradaSaida.solicitarAnoFabricacao();
						qtdTurbo  = EntradaSaida.solicitarQtdTurbo();
						suspensao = EntradaSaida.solicitarSuspensao();
						
						String[] dataEsportivo = {modelo, cor, anoFabricacao, qtdTurbo, suspensao};
						setCarros("CarroEsportivo", dataEsportivo);
					}
				}
				
				
			break;
			
			case 1: 
				Fabrica carro = null;
				String[] opVenda = {"Carro básico", "Carro esportivo"};
				JComboBox<String> menuVenda = new JComboBox<String>(opVenda);
				JOptionPane.showConfirmDialog(null, menuVenda, "Selecione a opção desejada para venda", JOptionPane.OK_CANCEL_OPTION);
				
				if(menuVenda.getSelectedIndex() == 0) {
					carro = new Carro();
					String[] opVendaCarrosBasicos = new String[listaDeCarrosBasicos.size()];
					
					
					for(int i = 0; i < listaDeCarrosBasicos.size(); i++) {
						String msg = "";
						msg += listaDeCarrosBasicos.get(i).getModelo() + " - ";
						msg += listaDeCarrosBasicos.get(i).getAnoFabricacao() + " - ";
						opVendaCarrosBasicos[i] = msg;
					}
					
					JComboBox<String> menuVendaBasicos = new JComboBox<String>(opVendaCarrosBasicos);
					JOptionPane.showConfirmDialog(null, menuVendaBasicos, "Selecione a opção desejada para venda", JOptionPane.OK_CANCEL_OPTION);
					
					carro.venderCarro(menuVendaBasicos.getSelectedIndex(), "CarroBasico");
				} else {
					String[] opVendaCarrosEsportivos = new String[listaDeCarrosEsportivos.size()];
					carro = new CarroEsportivo();
					
					for(int i = 0; i < listaDeCarrosEsportivos.size(); i++) {
						String msg = "";
						JOptionPane.showMessageDialog(null, listaDeCarrosEsportivos.size());
						msg += listaDeCarrosEsportivos.get(i).getModelo() + " - ";
						msg += listaDeCarrosEsportivos.get(i).getAnoFabricacao() + " - ";
						opVendaCarrosEsportivos[i] = msg;
					}
					
					JComboBox<String> menuVendaEsportivos= new JComboBox<String>(opVendaCarrosEsportivos);
					JOptionPane.showConfirmDialog(null, menuVendaEsportivos, "Selecione a opção desejada para venda", JOptionPane.OK_CANCEL_OPTION);
					carro.venderCarro(menuVendaEsportivos.getSelectedIndex(), "CarroEsportivo");
				}
				
				
			break;
			
			case 2: 
				//listaDeCarrosBasicos listaDeCarrosEsportivos
				String msg = "Carros Básicos\n";
				String msgEsportivo = "Carros Esportivos\n";
				for(int i = 0; i < listaDeCarrosBasicos.size(); i++) {
					if(i > 0) {
						msg += "--------------------------------\n";
					}
					msg += listaDeCarrosBasicos.get(i).getModelo() + "\n";
					msg += listaDeCarrosBasicos.get(i).getCor() + "\n";
					msg += listaDeCarrosBasicos.get(i).getAnoFabricacao() + "\n";
				}
				
				
				
				for(int i = 0; i < listaDeCarrosEsportivos.size(); i++) {
					if(i > 0) {
						msgEsportivo += "--------------------------------\n";
					}
					msgEsportivo += listaDeCarrosEsportivos.get(i).getModelo() + "\n";
					msgEsportivo += listaDeCarrosEsportivos.get(i).getCor() + "\n";
					msgEsportivo += listaDeCarrosEsportivos.get(i).getAnoFabricacao() + "\n";
					msgEsportivo += listaDeCarrosEsportivos.get(i).getQtdTurbo() + "\n";
					msgEsportivo += listaDeCarrosEsportivos.get(i).getSuspensao() + "\n";
				}
				
				if(listaDeCarrosBasicos.size() !=0) {
					JOptionPane.showMessageDialog(null, msg);
				}
				
				if(listaDeCarrosEsportivos.size() !=0) {
					JOptionPane.showMessageDialog(null, msgEsportivo);
				}
				
				
			break;
			
			case 3: 
				JOptionPane.showMessageDialog(null, "Saindo do programa..!");
				System.exit(0);
			break;
			
		}
		
		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
		} while(menu.getSelectedIndex() != 3);
	}
	
	
	
	




	public void setCarros(String op, String[] data) {
		Fabrica carro = null;
		
		
		switch(op) {
			case "CarroBasico": 
				carro = new Carro();
			    ArrayList<Fabrica> listaDeCarrosEsportivosNIl = new ArrayList<Fabrica>();
				listaDeCarrosBasicos.add(carro);
				carro.fabricarCarro(op, data[0], data[1], data[2], "", "", listaDeCarrosBasicos, listaDeCarrosEsportivosNIl);
				
			break;
			
			case "CarroEsportivo": 
				ArrayList<Fabrica> listaDeCarrosBasicosNil = new ArrayList<Fabrica>(); 
				carro = new CarroEsportivo();
				listaDeCarrosEsportivos.add(carro);
				carro.fabricarCarro(op, data[0], data[1], data[2], data[3], data[4], listaDeCarrosBasicosNil, listaDeCarrosEsportivos);
				
			break;
		
			default: 
				JOptionPane.showMessageDialog(null, "Error!");
			break;
		}
		
		
	
	}

}
