import java.util.Arrays;
import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [] numeric = new int[10];
		int soma = 0;
		int cont = 0;
		
		for(int i = 0; i < 10; i++) {
			System.out.println("Informe o "+(i+1)+"° número: ");
			numeric[i] = sc.nextInt();
			soma += numeric[i];
			cont++;
			
		}
		Arrays.sort(numeric);
		int min = numeric[3];
		System.out.println(min);

	    int max = numeric[numeric.length-2];
	    System.out.println(max);
	
		
		
		System.out.println("Média: " + (soma/cont));
    }

}
