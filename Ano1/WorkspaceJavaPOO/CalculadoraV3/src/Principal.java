
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
                    resultado = oper.calculaSoma(num1, num2);
                }
                case 2 ->{
                    resultado = oper.calculaSubtracao(num1, num2);
                }
                case 3 ->{
                    resultado = oper.calculaMultiplicacao(num1, num2);
                }
                case 4 ->{
                    while(num2==0){
                        num2= EntradaSaida.solicitarNumero("2°");
                    }
                    resultado = oper.calculaDivisao(num1, num2);
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
