import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [] numeric = new int[5];
		
		for(int i = 0; i < 5; i++) {
			System.out.println("Informe o "+(i+1)+"° número: ");
			numeric[i] = sc.nextInt();
		}
		
		for(int i = 0; i < 5; i++) {
			if(numeric[i] % 2 == 0) {
				System.out.println("Soma números pares : \n"+ numeric[i] + " + "+ numeric[i] + " = "+ (numeric[i] + numeric[i] + " \n"));
			} else {
				System.out.println("Soma números ímpares : \n"+ numeric[i] + " + "+ numeric[i] + " = "+ (numeric[i] + numeric[i] + " \n"));
			}
			
			System.out.println("Soma TODOS NÚMEROS : \n"+ numeric[i] + " + "+ numeric[i] + " = "+ (numeric[i] + numeric[i] + " \n"));
			
		}
		
		
		
	}

}
