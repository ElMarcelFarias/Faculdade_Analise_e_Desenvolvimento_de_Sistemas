import java.util.Arrays;
import java.util.Scanner;

public class Desafio3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int [][] matrizNumeros1 = new int[3][2];
		int [][] matrizNumeros2 = new int [2][3];
		int cont = 0;
		String numerosIguais = " /n";
		
		
		for(int x = 0; x < 2; x++) {
			for(int i = 0; i < 4; i++) {
				for(int j = 0; j < 4; j++) {	
					System.out.println("Inserir números na M="+(x+1)+" L="+(i+1) + " e na C="+(j+1)+"");
					if(x == 1) {
						matrizNumeros2[i][j] = sc.nextInt();
					} else {
						matrizNumeros1[i][j] = sc.nextInt();
					}
				}
			}
		}
		
		
		for(int i = 0; i < 4; i++) {
			for(int j = 0; j < 4; j++) {	
				if(matrizNumeros2[i][j] == matrizNumeros1[i][j]) {
					numerosIguais = numerosIguais + matrizNumeros2[i][j];
					cont++;
				}
			}
		}
		
		System.out.println("Quantidade de números iguais: "+ cont);
		System.out.println("Quantidade de números iguais: "+ numerosIguais);
		
		
		
    }

}
