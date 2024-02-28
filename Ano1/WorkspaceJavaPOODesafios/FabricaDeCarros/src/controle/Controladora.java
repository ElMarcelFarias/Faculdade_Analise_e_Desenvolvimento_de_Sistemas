package controle;
import modelo.*;
import visualizacao.EntradaSaida;


import javax.swing.JOptionPane;

public class Controladora {
	
	
	public void exibeMenu() {
		CarroBase carro = null;
		String suspensao = "";
		String qtdTurbo = "";
		int op = EntradaSaida.solicitarOpcao();
		String modelo = EntradaSaida.solicitarModelo();
		String cor    = EntradaSaida.solicitarCor();
		String anoFabricacao = EntradaSaida.solicitarAnoFabricacao();
		
		if(op == 0) {
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
