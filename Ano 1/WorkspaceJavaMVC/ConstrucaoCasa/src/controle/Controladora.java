package controle;
import java.util.ArrayList;

import javax.swing.JOptionPane;
import visualizacao.EntradaSaida;
import modelo.*; 

public class Controladora {
	private Casa casa = null;
	
	public void exibeMenu() {
		int opcao;
		do {
			
			opcao = EntradaSaida.solicitarOpcao();
			
			switch(opcao) {
				case 0:
					this.casa = new Casa();
					JOptionPane.showMessageDialog(null, "Construir casa");
					String descricao = EntradaSaida.solicitarDescricao("casa",0);
					String cor = EntradaSaida.solicitarCor();
					int qtdePortas = EntradaSaida.solicitarQtdeAberturas("portas");
					int qtdeJanelas = EntradaSaida.solicitarQtdeAberturas("janelas");
					
					ArrayList<Aberturas> listaDePortas = new ArrayList<Aberturas>();
					for(int i = 0; i < qtdePortas; i++) {
						Porta porta = new Porta();
						porta.setDescricao(EntradaSaida.solicitarDescricao("porta", (i+1)));
						porta.setEstado(EntradaSaida.solicitarEstado("porta"));
						listaDePortas.add(porta);
					}
					
					ArrayList<Aberturas> listaDeJanelas = new ArrayList<Aberturas>();
					for(int i = 0; i < qtdeJanelas; i++) {
						Porta janelas = new Porta();
						janelas.setDescricao(EntradaSaida.solicitarDescricao("janelas", (i+1)));
						janelas.setEstado(EntradaSaida.solicitarEstado("janelas"));
						listaDePortas.add(janelas);
					}
					
					
					
					
					this.casa.constroiCasa(descricao, cor, listaDePortas, listaDeJanelas);
					System.out.println("Descrição da casa: "+ casa.getDescricao() + "\n");
					System.out.println("Cor da casa: "+ casa.getCor() + "\n");

					for(Aberturas porta: casa.getListaDePortas()) {
						System.out.println("Descrição da porta: "+ porta.getDescricao() + "\n");
						System.out.println("Estado da casa: "+ porta.getEstado() + "\n");
					}
					
					for(Aberturas janelas: casa.getListaDePortas()) {
						System.out.println("Descrição da janela: "+ janelas.getDescricao() + "\n");
						System.out.println("Estado da janela: "+ janelas.getEstado() + "\n");
					}
				break;
				
				case 1:
					JOptionPane.showMessageDialog(null, "Movimentar portas ou janelas");
				break;
					
				case 2:
					JOptionPane.showMessageDialog(null, "Ver informações da casa");
				break;
			}
			
		} while(opcao !=3);
		
		EntradaSaida.exibeMsgEncerrarPrograma();
		System.exit(0);
	}
	
}
