
import javax.swing.JOptionPane;
public class Principal {
	
	public static void main(String[] args) {
		
        int continuar;
        double resultado = 0;
        Operacoes oper = null;
        do{
            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");
            int operacao = EntradaSaida.solicitarOperacao();

            switch (operacao){
                case 1 ->{
                	oper = new Soma();
                }
                case 2 ->{
                	oper = new Subtracao();
                }
                case 3 ->{
                	oper = new Multiplicacao();
                }
                case 4 ->{
                    while(num2==0){
                        num2= EntradaSaida.solicitarNumero("2°");
                    }
                    oper = new Divisao();
                    
                }
                default -> {
                    JOptionPane.showMessageDialog(null, "Operação inválida! A calculador será encerrada!");
                    System.exit(0);
                }
            }
            
            oper.setNum1(num1);
            oper.setNum2(num2);
            resultado = oper.calcula();
            
            EntradaSaida.mostrarResultado(resultado, operacao);
            continuar = Integer.parseInt(JOptionPane.showInputDialog("Deseja continuar calculando? 1- Sim | 2- Não "));

        } while(continuar == 1);
    }
	
	
	

}
