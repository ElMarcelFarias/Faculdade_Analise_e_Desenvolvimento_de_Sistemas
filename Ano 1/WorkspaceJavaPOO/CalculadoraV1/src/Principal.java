
import javax.swing.JOptionPane;
public class Principal {

	public static void main(String[] args) {
        int continuar;
        double resultado = 0;

        do{
            double num1 = EntradaSaida.solicitarNumero("1°");
            double num2 = EntradaSaida.solicitarNumero("2°");
            int operacao = EntradaSaida.solicitarOperacao();

            switch (operacao){
                case 1 ->{
                    resultado = calculaSoma(num1, num2);
                }
                case 2 ->{
                    resultado = calculaSubtracao(num1, num2);
                }
                case 3 ->{
                    resultado = calculaMultiplicacao(num1, num2);
                }
                case 4 ->{
                    while(num2==0){
                        num2= EntradaSaida.solicitarNumero("2°");
                    }
                    resultado = calculaDivisao(num1, num2);
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
	
	static double calculaSoma(double num1, double num2){
        double soma = num1 + num2;
        return soma;
    }
    static double calculaSubtracao(double num1, double num2){
        double sub = num1 - num2;
        return sub;
    }
    static double calculaMultiplicacao(double num1, double num2){
        double mult = num1 * num2;
        return mult;
    }
    static double calculaDivisao(double num1, double num2){
        double divi = num1 / num2;
        return divi;
    }
	

}
