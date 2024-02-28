import java.util.Arrays;
import java.util.Scanner;

public class Desafio1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [][] numeric = new int[4][5];
		int [] somaArrayLinha = new int [4];
		int totalMatriz = 0;
		
		for(int i = 0; i < 4; i++) {
			int soma = 0;
			
			for(int j = 0; j < 5; j++) {	
				System.out.println("Inserir números na L="+(i+1) + " e na C="+(j+1)+"");
				numeric[i][j] = sc.nextInt();
				soma = soma + numeric[i][j];
			}
			
			somaArrayLinha[i] = soma;
		}
		
		for (int i = 0; i < 4; i++) {
			System.out.println("Array linha "+ (i+1) + " = " + somaArrayLinha[i]);
		}
    }

}
