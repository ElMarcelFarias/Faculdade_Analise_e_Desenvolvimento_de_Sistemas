package controller;

import model.*;
import view.EntradaSaida;


import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class Controladora {

	Fabrica fabrica = new Fabrica();

	public void exibeMenu() {


		String[] opcoes = { "Fabricar Carro", "Listar os Carros", "Vender Carro", "Sair do programa" };
		JComboBox<String> menu = new JComboBox<String>(opcoes);

		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

		do {

			switch (menu.getSelectedIndex()) {
				case 0:
					int qtdFabricar = Integer.parseInt(JOptionPane.showInputDialog("Informe quantos carros deseja fabricar: "));
					while(qtdFabricar < 0) {
						if(qtdFabricar < 0) {
							JOptionPane.showMessageDialog(null, "Por favor digite um valor válido!");
							qtdFabricar = Integer.parseInt(JOptionPane.showInputDialog("Informe quantos carros deseja fabricar: "));
						}
					}
					
					for (int i = 0; i < qtdFabricar; i++) {
						String[] dadosInput = solicitarDadosCarro();
						String[] dados = {dadosInput[0], dadosInput[1], dadosInput[2]};
						salvarDados(dados);
					}
				break;
	
				case 1:
					String msg = fabrica.verCarros();
					EntradaSaida.carroCompleto(msg);
				break;
				
				case 2:
					String[] opVendaCarrosBasicos = new String[fabrica.getListaDeCarros().size()];
					String msgVenda = ""; 
					
					if(!(fabrica.getListaDeCarros().isEmpty())) {
					
						for(int i = 0; i < fabrica.getListaDeCarros().size(); i++) { 
							msgVenda = "";
							msgVenda += fabrica.getListaDeCarros().get(i).getModelo().toUpperCase() + " - "; 
							msgVenda += fabrica.getListaDeCarros().get(i).getAnoDeFabricacao().toUpperCase() + " - ";
							msgVenda += fabrica.getListaDeCarros().get(i).getCor().toUpperCase() + "  ";
							
							opVendaCarrosBasicos[i] = msgVenda; 
						}
					  
						JComboBox<String> menuVendaBasicos = new JComboBox<String>(opVendaCarrosBasicos); 
						JOptionPane.showConfirmDialog(null, menuVendaBasicos, "Selecione a opção desejada para venda", JOptionPane.OK_CANCEL_OPTION);
					
						fabrica.venderCarros(menuVendaBasicos.getSelectedIndex());
					} else {
						JOptionPane.showMessageDialog(null, "Não temos carros disponíveis");
					}
					
				break;
				
				case 3:
					JOptionPane.showMessageDialog(null, "Até a próxima!...");
					System.exit(0);
				break;
			
			}

			JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
		} while (menu.getSelectedIndex() != 3);
	}
	
	
	public void salvarDados(String[] dados) {
		Carro carro = new Carro();
		carro.setModelo(dados[0]);          
		carro.setCor(dados[1]);             
		carro.setAnoDeFabricacao(dados[2]);
		fabrica.fabricarCarros(carro);
	}
	
	public String [] solicitarDadosCarro() {
		
		String modelo = EntradaSaida.solicitarModelo();
		String cor = EntradaSaida.solicitarCor();
		String anoDeFabricacao = EntradaSaida.solicitarAnoDeFabricacao();
		
		String[] dados =  {modelo, cor, anoDeFabricacao};
		return dados;
		
	}

}
