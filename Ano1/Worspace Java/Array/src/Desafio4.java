import java.util.Arrays;
import java.util.Scanner;

public class Desafio4 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [] numeros = new int[5];
		
		for(int i = 0; i < 5; i++) {
			System.out.println("Informe o "+(i+1)+"° número: ");
			numeros[i] = sc.nextInt();
		}
		
		Arrays.sort(numeros);
		
		for(int i = 0; i < 5; i++) {
			System.out.println(numeros[i]);
		}
		
    }

}
