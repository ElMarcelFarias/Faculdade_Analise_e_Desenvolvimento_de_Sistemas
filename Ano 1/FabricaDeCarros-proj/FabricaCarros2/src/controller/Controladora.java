package controller;

import model.*;
import view.EntradaSaida;

import java.util.ArrayList;

import javax.swing.JComboBox;
import javax.swing.JOptionPane;

public class Controladora {

	Fabrica fabrica = new Fabrica();
//	ArrayList<Fabrica> listaDeCarrosBasicos    = new ArrayList<Fabrica>(); 
///	ArrayList<Fabrica> listaDeCarrosEsportivos = new ArrayList<Fabrica>();

	public void exibeMenu() {

		// String modelo = "";
		// String cor = "";
		// String anoFabricacao = "";
		// String suspensao = "";
		// String qtdTurbo = "";

		String[] opcoes = { "Fabricar Carro", "Listar os Carros", "Vender Carro", "Sair do programa" };
		JComboBox<String> menu = new JComboBox<String>(opcoes);

		JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);

		do {

			switch (menu.getSelectedIndex()) {
			case 0:
				int qtdFabricar = Integer
						.parseInt(JOptionPane.showInputDialog("Informe quantos carros deseja fabricar: "));

				for (int i = 0; i < qtdFabricar; i++) {
					String modelo = EntradaSaida.solicitarModelo();
					String cor = EntradaSaida.solicitarCor();
					Carro carro = new Carro();
					carro.setCor(cor);
					carro.setModelo(modelo);
					fabrica.fabricarCarros(carro);

					// String[] opFabricar = {"Carro básico", "Carro esportivo"};
					// JComboBox<String> menuFabricar = new JComboBox<String>(opFabricar);
					// JOptionPane.showConfirmDialog(null, menuFabricar, "Selecione a opção
					// desejada", JOptionPane.OK_CANCEL_OPTION);

					// if(menuFabricar.getSelectedIndex() == 0) {

					// modelo = EntradaSaida.solicitarModelo();
					// cor = EntradaSaida.solicitarCor();
					// anoFabricacao = EntradaSaida.solicitarAnoFabricacao();

					// }

				}
				break;

			case 1:

				String msg = fabrica.verCarros();
				EntradaSaida.carroCompleto(msg);
				break;
			case 2:
				
				int posicao= Integer.parseInt(JOptionPane.showInputDialog("Informe a posição: "));
				
				fabrica.venderCarros(posicao);
				
				break;

			/**
			 * case 1: Fabrica carro = null; String[] opVenda = {"Carro básico", "Carro
			 * esportivo"}; JComboBox<String> menuVenda = new JComboBox<String>(opVenda);
			 * JOptionPane.showConfirmDialog(null, menuVenda, "Selecione a opção desejada
			 * para venda", JOptionPane.OK_CANCEL_OPTION);
			 * 
			 * if(menuVenda.getSelectedIndex() == 0) { carro = new Carro(); String[]
			 * opVendaCarrosBasicos = new String[listaDeCarrosBasicos.size()];
			 * 
			 * 
			 * for(int i = 0; i < listaDeCarrosBasicos.size(); i++) { String msg = ""; msg
			 * += listaDeCarrosBasicos.get(i).getModelo() + " - "; msg +=
			 * listaDeCarrosBasicos.get(i).getAnoFabricacao() + " - ";
			 * opVendaCarrosBasicos[i] = msg; }
			 * 
			 * JComboBox<String> menuVendaBasicos = new
			 * JComboBox<String>(opVendaCarrosBasicos); JOptionPane.showConfirmDialog(null,
			 * menuVendaBasicos, "Selecione a opção desejada para venda",
			 * JOptionPane.OK_CANCEL_OPTION);
			 * 
			 * carro.venderCarro(menuVendaBasicos.getSelectedIndex(), "CarroBasico"); } else
			 * { String[] opVendaCarrosEsportivos = new
			 * String[listaDeCarrosEsportivos.size()]; carro = new CarroEsportivo();
			 * 
			 * for(int i = 0; i < listaDeCarrosEsportivos.size(); i++) { String msg = "";
			 * JOptionPane.showMessageDialog(null, listaDeCarrosEsportivos.size()); msg +=
			 * listaDeCarrosEsportivos.get(i).getModelo() + " - "; msg +=
			 * listaDeCarrosEsportivos.get(i).getAnoFabricacao() + " - ";
			 * opVendaCarrosEsportivos[i] = msg; }
			 * 
			 * JComboBox<String> menuVendaEsportivos= new
			 * JComboBox<String>(opVendaCarrosEsportivos);
			 * JOptionPane.showConfirmDialog(null, menuVendaEsportivos, "Selecione a opção
			 * desejada para venda", JOptionPane.OK_CANCEL_OPTION);
			 * carro.venderCarro(menuVendaEsportivos.getSelectedIndex(), "CarroEsportivo");
			 * }
			 * 
			 * 
			 * break;
			 * 
			 * case 2: //listaDeCarrosBasicos listaDeCarrosEsportivos String msg = "Carros
			 * Básicos\n"; String msgEsportivo = "Carros Esportivos\n"; for(int i = 0; i <
			 * listaDeCarrosBasicos.size(); i++) { if(i > 0) { msg +=
			 * "--------------------------------\n"; } msg +=
			 * listaDeCarrosBasicos.get(i).getModelo() + "\n"; msg +=
			 * listaDeCarrosBasicos.get(i).getCor() + "\n"; msg +=
			 * listaDeCarrosBasicos.get(i).getAnoFabricacao() + "\n"; }
			 * 
			 * 
			 * 
			 * for(int i = 0; i < listaDeCarrosEsportivos.size(); i++) { if(i > 0) {
			 * msgEsportivo += "--------------------------------\n"; } msgEsportivo +=
			 * listaDeCarrosEsportivos.get(i).getModelo() + "\n"; msgEsportivo +=
			 * listaDeCarrosEsportivos.get(i).getCor() + "\n"; msgEsportivo +=
			 * listaDeCarrosEsportivos.get(i).getAnoFabricacao() + "\n"; msgEsportivo +=
			 * listaDeCarrosEsportivos.get(i).getQtdTurbo() + "\n"; msgEsportivo +=
			 * listaDeCarrosEsportivos.get(i).getSuspensao() + "\n"; }
			 * 
			 * if(listaDeCarrosBasicos.size() !=0) { JOptionPane.showMessageDialog(null,
			 * msg); }
			 * 
			 * if(listaDeCarrosEsportivos.size() !=0) { JOptionPane.showMessageDialog(null,
			 * msgEsportivo); }
			 * 
			 * 
			 * break;
			 * 
			 * case 3: JOptionPane.showMessageDialog(null, "Saindo do programa..!");
			 * System.exit(0); break;
			 */
			}

			JOptionPane.showConfirmDialog(null, menu, "Selecione a opção desejada", JOptionPane.OK_CANCEL_OPTION);
		} while (menu.getSelectedIndex() != 3);
	}

}
