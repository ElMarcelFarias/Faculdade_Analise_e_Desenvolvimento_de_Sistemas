package dowhile_while;

import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		System.out.println("Cálculadora Básica");
		
		boolean auxLoop = true; 
		float resultado = 0;
		
		while(auxLoop) {
			System.out.println("Informe o primeiro número: ");
			int n1 = sc.nextInt();
			
			sc.nextLine();
			
			System.out.println("Soma: (+) \nSubtração(-) \nDivisão(/) \nMultiplicação(x)");
			String auxCalculo = sc.nextLine();
			
			
			System.out.println("Informe o segundo número: ");
			int n2 = sc.nextInt();
			
			switch (auxCalculo) {
				case "+":
					resultado = n1 + n2;
				break;
				
				case "-":
					resultado = n1 - n2;
				break;
					
				case "/":
					if(n2 == 0) {
						do {
							System.out.println("Segundo número não pode ser 0, Informe um outro número ");
							n2 = sc.nextInt();
						} while(n2 == 0); 
					}
					resultado = n1 / n2;
				break;
					
				case "X":
					resultado = n1 * n2;
				break;
			}
			
			System.out.println("Resultado da operação..: "+ resultado);
			
			System.out.println("Deseja realizar uma nova operação? (true -  SIM) | (false - NÃO)");
			auxLoop = sc.nextBoolean();
			
		}
	}

	private static String toUpperCase(String nextLine) {
		// TODO Auto-generated method stub
		return null;
	}

}
