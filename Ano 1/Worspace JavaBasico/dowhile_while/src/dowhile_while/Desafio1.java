package dowhile_while;

import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		int numero = 0;
		int contImpar = 0;
		
		System.out.println("Informe um número: ");
		numero = sc.nextInt();
		
		while(!(numero % 2 == 0)) {
			contImpar++;
			
			System.out.println("Informe um número: ");
			numero = sc.nextInt();
		}
		
//		do {
//			System.out.println("Informe um número: ");
//			numero = sc.nextInt();
//			if(!(numero % 2 == 0)) { contImpar++; }
//			
//		} while(!(numero % 2 == 0));
		
		System.out.println("Quantidade de números ímpares: "+ contImpar);
	}

}
