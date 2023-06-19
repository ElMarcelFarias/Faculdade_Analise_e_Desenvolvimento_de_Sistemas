import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [] numeric = new int[5];
		int soma = 0;
		int cont = 0;
		
		for(int i = 0; i < 4; i++) {
			System.out.println("Informe o "+(i+1)+"° número: ");
			numeric[i] = sc.nextInt();
			soma += numeric[i];
			cont++;
		}
		
		System.out.println("Média: " + (soma/cont));
    }

}
