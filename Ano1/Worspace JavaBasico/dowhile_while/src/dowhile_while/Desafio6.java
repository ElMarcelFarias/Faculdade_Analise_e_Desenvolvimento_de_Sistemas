package dowhile_while;

import java.util.Scanner;

public class Desafio6 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int number = 0;
		float imc = 0;
		do {
			
			System.out.println("Informe seu peso..: ");
			Float peso = sc.nextFloat();
			
			System.out.println("Informe sua altura..: ");
			Float altura = sc.nextFloat();
			
			
			System.out.println("PESO: "+ peso);
			System.out.println("altura: "+ altura);
			altura = altura*altura;
			imc = peso/altura;
			System.out.println("Este é o seu IMC: "+ imc);
			
			
			
			System.out.println("(1 - Finalizar) (2 - Permanecer)");
			number = sc.nextInt();
			
		
		} while(number != 1);
	}

}
