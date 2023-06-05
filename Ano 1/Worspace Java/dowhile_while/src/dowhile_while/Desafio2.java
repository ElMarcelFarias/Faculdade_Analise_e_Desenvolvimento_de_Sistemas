package dowhile_while;

import java.util.Scanner;

public class Desafio2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o primeiro número: ");
		int numero1 = sc.nextInt();
		
		System.out.println("Informe o segundo número: ");
		int numero2 = sc.nextInt();
		
		System.out.println("Informe o resultado da multiplicação do primeiro número pelo segundo "+numero1 + " x "+ numero2 + " = ?");
		int numero = sc.nextInt();
		
		int contError = 0;
		int aux = numero1*numero2;
		
		while(aux!=numero) {
			contError++;
			
			System.out.println("ERRADA... Informe o resultado novamente.: ");
			numero = sc.nextInt();
		}
		
		System.out.println("Quantidade de tentativas..: "+ contError);
		
	}

}
