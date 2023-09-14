
import javax.swing.JOptionPane;
public class Principal {
	
	
	private static Operacoes oper = new Operacoes();
	
	public static void main(String[] args) {
		
        int continuar;
        double resultado = 0;

        do{
            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");
            int operacao = EntradaSaida.solicitarOperacao();

            switch (operacao){
                case 1 ->{
                	Soma soma = new Soma();
                	soma.setNum1(num1);
                	soma.setNum2(num2);
                    resultado = soma.calculaSoma();
                }
                case 2 ->{
                	Subtracao subtracao = new Subtracao();
                	subtracao.setNum1(num1);
                	subtracao.setNum2(num2);
                    resultado = subtracao.calculaSubtracao();
                }
                case 3 ->{
                	Multiplicacao multiplicacao = new Multiplicacao();
                	multiplicacao.setNum1(num1);
                	multiplicacao.setNum2(num2);
                    resultado = multiplicacao.calculaMultiplicacao();
                }
                case 4 ->{
                    while(num2==0){
                        num2= EntradaSaida.solicitarNumero("2°");
                    }
                    Divisao divisao = new Divisao();
                    divisao.setNum1(num1);
                    divisao.setNum2(num2);
                    resultado = divisao.calculaDivisao();
                }
                default -> {
                    JOptionPane.showMessageDialog(null, "Operação inválida! A calculador será encerrada!");
                    System.exit(0);
                }
            }
            
            EntradaSaida.mostrarResultado(resultado, operacao);
            continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1- Sim | 2- Não "));

        } while(continuar == 1);
    }
	
	
	

}
