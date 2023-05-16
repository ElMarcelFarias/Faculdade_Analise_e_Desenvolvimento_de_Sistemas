import java.util.Scanner;

public class Desafio8 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o salário Ex..:(2.500)");
		Float salario = sc.nextFloat();
		
		if(salario < 0) {
			System.out.println("DIGITE UM VALOR VÁLIDO!");
		}else if(salario <= 1903.98) {
			System.out.println("isento de imposto");
			
		} else if (salario <= 2826.65) {
			System.out.println("Valor do imposto de 7,5% ..: "+ salario * 0.075);
			
		} else if (salario <= 3751.05) {
			System.out.println("Valor do imposto de 15% ..: "+ salario * 0.15);
			
		} else if (salario <= 3751.05) {
			System.out.println("Valor do imposto de 22,5% ..: "+ salario * 0.225);
			
		} else {
			System.out.println("Valor do imposto de 27,5% ..: "+ salario * 0.275);
		}

	}

}
