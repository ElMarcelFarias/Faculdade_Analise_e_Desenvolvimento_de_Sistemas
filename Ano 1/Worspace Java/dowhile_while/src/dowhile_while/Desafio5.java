package dowhile_while;

import java.util.Scanner;

public class Desafio5 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Informe o primeiro número: ");
		int numero1 = sc.nextInt();
		
		System.out.println("Informe o segundo número: ");
		int numero2 = sc.nextInt();
		
		System.out.println("Informe o resultado da soma do primeiro número pelo segundo "+numero1 + " + "+ numero2 + " = ?");
		int numero = sc.nextInt();
		
		int contError = 0;
		int aux = numero1+numero2;
		
		while(aux!=numero) {
			contError++;
			
			System.out.println("ERRADA... Tente Novamente..:  ");
			numero = sc.nextInt();
		}
		
		System.out.println("Resultado correto!!");
		
	}

}
