import java.util.Scanner;

public class Desafio6 {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner sc = new Scanner(System.in);
		
		System.out.println("INFORME O PRIMEIRO LADO DO TRIANGULO ");
		int triang1 = sc.nextInt();
		
		System.out.println("INFORME O SEGUNDO LADO DO TRIANGULO ");
		int triang2 = sc.nextInt();
		
		System.out.println("INFORME O TERCEIRO LADO DO TRIANGULO");
		int triang3 = sc.nextInt();
		
		if((triang1 == triang2) && (triang1 == triang3) && ((triang3 == triang2))) {
			System.out.println("Triângulo Equilátero! ");
		} else if ((triang1 != triang2) && (triang1 != triang3) && ((triang3 != triang2))) {
			System.out.println("Triângulo Escaleno! ");
		} else {
			System.out.println("Triângulo isósceles! ");
		}
	}
}
