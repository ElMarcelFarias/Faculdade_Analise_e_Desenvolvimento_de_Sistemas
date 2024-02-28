
import java.util.Dictionary;
import java.util.Hashtable;

import javax.swing.JOptionPane;
public class Principal {
	
	
	public static void main(String[] args) {
		CarroBase carro = null;
		String suspensao = "";
		String qtdTurbo = "";
		
		
		int op = Integer.parseInt(JOptionPane.showInputDialog("Carro básico (1) | Carro esportivo (2)"));
		String modelo = EntradaSaida.solicitarModelo();
		String cor    = EntradaSaida.solicitarCor();
		String anoFabricacao = EntradaSaida.solicitarAnoFabricacao();
		
		if(op == 1) {
			carro = new Carro();
		} else {
			carro = new CarroEsportivo();
			qtdTurbo  = EntradaSaida.solicitarQtdTurbo();
			suspensao = EntradaSaida.solicitarSuspensao();
			carro.setQtdTurbo(qtdTurbo);
			carro.setSuspensao(suspensao);
			
		}
		carro.setModelo(modelo);
		carro.setCor(cor);
		carro.setAnoFabricacao(anoFabricacao);
		String resultado = carro.descricaoCarro();
		EntradaSaida.carroCompleto(resultado);
		
		
		
		
		
		

		
		
		
	}

}
